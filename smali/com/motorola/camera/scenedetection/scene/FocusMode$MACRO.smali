.class public final Lcom/motorola/camera/scenedetection/scene/FocusMode$MACRO;
.super Lcom/motorola/camera/scenedetection/scene/FocusMode;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "MACRO"

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/scenedetection/scene/FocusMode;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/scenedetection/scene/FocusMode;->applyFixedFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method
