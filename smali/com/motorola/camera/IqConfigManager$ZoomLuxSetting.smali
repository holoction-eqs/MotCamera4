.class public abstract Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public maxIso:F

.field public maxLux:F

.field public maxZoom:F

.field public minIso:F

.field public minLux:F

.field public minZoom:F


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    const-string v0, "lux_range"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->readJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    const-string p2, "lux_idx_range"

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->readJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static isWithinThreshold(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_1

    cmpg-float p0, p0, p2

    if-lez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public fitsParameters(FFF)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    iget v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F

    invoke-static {p2, p1, v0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    iget p0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F

    invoke-static {p3, p1, p0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final readJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "iso_range"

    :try_start_0
    const-string v1, "zoom_range"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float p1, v4

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minIso:F

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxIso:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    const-string p1, "IqConfigManager"

    const-string p2, "Error parsing Zoom/Lux Configuration: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
