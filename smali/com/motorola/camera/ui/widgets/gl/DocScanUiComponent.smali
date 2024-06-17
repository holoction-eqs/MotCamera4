.class public final Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# static fields
.field public static mInstructionEnable:Z = false


# instance fields
.field public finishOneZoom:Z

.field public finishZoomTick:I

.field public mCheckValue:I

.field public mDensity:F

.field public mDisplayOrientation:I

.field public mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

.field public mEnableDrawRectOrTips:Z

.field public mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

.field public final mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mIsControlPanelOn:Z

.field public final mMcfDocScanListener:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

.field public final mMcfMlStateAdapter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

.field public final mOutlineColor:I

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

.field public mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

.field public mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;


# direct methods
.method public static -$$Nest$mcheckSmartScale(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Ljava/util/ArrayList;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_AUTO_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_ZOOM_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    if-gez v0, :cond_2

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v6, v3, v0

    if-eqz v6, :cond_5

    cmpl-float v6, v3, v5

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_2
    int-to-float v6, v6

    div-float/2addr v3, v6

    const v6, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    const/high16 v7, 0x42480000    # 50.0f

    sub-float/2addr v0, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    sub-float v0, v6, v0

    div-float/2addr v0, v6

    sub-float/2addr v5, v7

    mul-float/2addr v5, v8

    sub-float v5, v6, v5

    div-float/2addr v5, v6

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    sub-float/2addr v4, v7

    mul-float/2addr v4, v8

    sub-float v4, v3, v4

    div-float/2addr v4, v3

    sub-float/2addr p1, v7

    mul-float/2addr p1, v8

    sub-float p1, v3, p1

    div-float/2addr p1, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v2

    :goto_4
    if-eqz v0, :cond_a

    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float p1, v3, p1

    cmpl-float v4, v0, v3

    if-lez v4, :cond_8

    sub-float/2addr v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    mul-float/2addr p1, v0

    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    if-eqz v3, :cond_9

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMinUIZoomX()F

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ZOOM_JUMP_X"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p1, "CAMERA_TYPE"

    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "VIDEO_RECORDING"

    invoke-virtual {v3, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "SMOOTH_ZOOM_JUMP"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmoothZoomJumpSupported()Z

    move-result v0

    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "IS_AUTO_ZOOM"

    invoke-virtual {v3, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_a
    :goto_6
    return-void
.end method

.method public static -$$Nest$misValidPoints(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;[Landroid/graphics/Point;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v5, Lcom/motorola/camera/PreviewSize;->width:I

    if-gt v4, v6, :cond_3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_3

    iget v4, v5, Lcom/motorola/camera/PreviewSize;->height:I

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object p0, p1, v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v2

    int-to-double v7, p0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aget-object p0, p1, v1

    const/4 v4, 0x2

    aget-object p1, p1, v4

    iget v4, p0, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v7

    int-to-double v7, v4

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p0, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v4, p0

    const/16 p0, 0xa

    int-to-double p0, p0

    cmpg-double p0, v4, p0

    if-gtz p0, :cond_3

    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mIsControlPanelOn:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    new-instance v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-direct {v0}, Lcom/motorola/camera/slidedoc/SlidePointTuning;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfDocScanListener:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfMlStateAdapter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

    const/4 p2, 0x5

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mCheckValue:I

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const p2, 0x7f0600b7

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mOutlineColor:I

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    return-void
.end method

.method public static isMlSlideSupported()Z
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DocScanUiComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v3

    invoke-virtual {v2, v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v6, v4, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    invoke-virtual {v2, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120172

    goto :goto_0

    :cond_0
    const v2, 0x7f120170

    :goto_0
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FIILjava/lang/Object;)V

    iput-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mOutlineColor:I

    invoke-virtual {v11, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v5, 0x7f120171

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    invoke-virtual {v2, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->updateTipsPosition()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return v3
.end method

.method public final manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfDocScanListener:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$1;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :goto_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mMcfMlStateAdapter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final onDraw([F[F[F)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mIsControlPanelOn:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_4

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-virtual {p3}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getShowingPoints()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showDetection(Ljava/util/ArrayList;[F[F)V

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    monitor-enter p3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p3, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->getPoints()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showDetection(Ljava/util/ArrayList;[F[F)V

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->showEmpty([F[F)V

    :cond_4
    :goto_2
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz p3, :cond_5

    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->draw([F[F)V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->onPreDraw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

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

.method public final onReviewSaveComplete(Landroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v3

    const-string v4, "DOCUMENT_ORIENTATION"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "DOCUMENT_SERVICE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v0, 0x0

    const/16 v3, 0xa

    invoke-direct {p1, v1, v3, v2, v0}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final declared-synchronized onRotate(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->updateTipsPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_TRIPOD_SCALE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    mul-float/2addr v1, p2

    add-float/2addr v1, p1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float/2addr p1, v1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v3, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p2, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v3

    invoke-virtual {p2, v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz p2, :cond_3

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDisplayOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v3, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {p2, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    invoke-virtual {p0, v1, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_3
    return-void
.end method

.method public final registerListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionalToastListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final showDetection(Ljava/util/ArrayList;[F[F)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->updateTexture$enumunboxing$(III)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    return-void
.end method

.method public final showEmpty([F[F)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->updateTexture$enumunboxing$(III)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_d

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto/16 :goto_c

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_5

    iget v3, v0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    if-eqz v0, :cond_6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    const-string v4, "DOCUMENT_WIDTH"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "DOCUMENT_HEIGHT"

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3e4ccccc    # 0.19999999f

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    iget-object v4, v4, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    int-to-float v3, v3

    mul-float v4, v3, v7

    div-float/2addr v4, v6

    float-to-int v4, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v3, v4

    int-to-float v0, v0

    mul-float/2addr v7, v0

    div-float/2addr v7, v6

    float-to-int v6, v7

    mul-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v6

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v5, v2

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v5, v1

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x2

    aput-object v6, v5, v3

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x3

    aput-object v3, v5, v0

    move-object v4, v5

    :goto_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->-$$Nest$mresendDelayMessage(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    goto :goto_3

    :cond_9
    int-to-float v3, v3

    mul-float v8, v3, v7

    div-float/2addr v8, v6

    float-to-int v8, v8

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v3, v8

    int-to-float v0, v0

    mul-float/2addr v7, v0

    div-float/2addr v7, v6

    float-to-int v6, v7

    mul-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v8, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->-$$Nest$mresendDelayMessage(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    :goto_4
    const-string p0, "DOCUMENT_POINTS"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDocPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_d

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    if-eqz p0, :cond_1b

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_d

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance p1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v1, "setDocScanDetectionMode"

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->ON:Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v1, "setMlDocScanDetectionMode"

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v1, "setDocScanDetectionMode"

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->ON:Lcom/motorola/camera/mcf/McfParameters$Modes;

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->ON:Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v1, "setDocScanDetectionMode"

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    goto :goto_6

    :cond_10
    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v1, "setDocScanDetectionMode"

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "setMlDocScanDetectionMode"

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p1, v0}, Lcom/motorola/camera/mcf/McfParameters;->setMlSlideScanDetectionMode(Lcom/motorola/camera/mcf/McfParameters$Modes;)V

    :goto_7
    invoke-static {p1}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto/16 :goto_d

    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->registerListener(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_d

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result p1

    if-eqz p1, :cond_13

    const p1, 0x7f120172

    goto :goto_8

    :cond_13
    const p1, 0x7f120170

    :goto_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->-$$Nest$mresendDelayMessage(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V

    goto/16 :goto_d

    :cond_14
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->registerListener(Z)V

    goto/16 :goto_d

    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_b

    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_AUTO_ZOOM"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    iget-object p1, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->pointsFlow:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_17

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception p1

    goto :goto_a

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "SlidePointTuning"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_17
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    :goto_a
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_18
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_AUTO_ZOOM"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    goto :goto_d

    :cond_19
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    :goto_b
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->manageListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->registerListener(Z)V

    :goto_c
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mEnableDrawRectOrTips:Z

    :cond_1b
    :goto_d
    return-void
.end method

.method public final unloadTextures()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionTex:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$InstructionTexture;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mThumb:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanThumbnailTexture;->unloadTexture()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    :cond_4
    return-void
.end method

.method public final updateTipsPosition()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDensity:F

    const/high16 v2, 0x43180000    # 152.0f

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_2

    const/16 v8, 0xb4

    if-eq v4, v8, :cond_1

    const/16 v3, 0x10e

    if-eq v4, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v2, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    sub-float/2addr v0, v2

    invoke-direct {v1, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v3, v2

    invoke-direct {v1, v3, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v0, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    add-float/2addr v0, v2

    invoke-direct {v1, v6, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v1, v6, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_1
    return-void
.end method
