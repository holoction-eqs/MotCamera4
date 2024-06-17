.class public final Lcom/motorola/camera/panorama/morpho/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public calcseam_pixnum:I

.field public distortion_k1:D

.field public distortion_k2:D

.field public distortion_k3:D

.field public distortion_k4:D

.field public draw_threshold:D

.field public motion_detection_mode:I

.field public noise_reduction_level:I

.field public projection_mode:I

.field public rotation_ratio:D

.field public seamsearch_ratio:D

.field public sensor_mode:I

.field public unsharp_strength:I

.field public final use_gravity_sensor:Z

.field public use_round_auto_end:Z

.field public use_round_auto_end_sensor_mode:I

.field public zrotation_coeff:D


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7e90

    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->calcseam_pixnum:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k1:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k2:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k3:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k4:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->draw_threshold:D

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoRotationRatio:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->rotation_ratio:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->seamsearch_ratio:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_gravity_sensor:Z

    const/16 v1, 0x200

    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->unsharp_strength:I

    const-wide v1, 0x3fee666666666666L    # 0.95

    iput-wide v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->zrotation_coeff:D

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->noise_reduction_level:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "GyroScope"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    goto :goto_1

    :cond_0
    const-string v4, "Rotation Vector"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    :goto_1
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    :goto_2
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end:Z

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "Equirectangular"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    goto :goto_3

    :cond_3
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    :goto_3
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "Fast"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    goto :goto_4

    :cond_4
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    :goto_4
    return-void
.end method
