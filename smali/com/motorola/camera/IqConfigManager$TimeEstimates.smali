.class public final Lcom/motorola/camera/IqConfigManager$TimeEstimates;
.super Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
.source "SourceFile"


# instance fields
.field public final timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;-><init>(Lorg/json/JSONObject;)V

    new-instance v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    invoke-direct {v0}, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    :try_start_0
    const-string p0, "time_estimate_coeff"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->-$$Nest$mparseJson(Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    const-string p1, "IqConfigManager"

    const-string v0, "Error parsing Time Estimates Setting: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeEstimates{timeEstimateCoeff="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
