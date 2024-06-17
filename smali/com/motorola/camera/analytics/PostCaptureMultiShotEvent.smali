.class public final Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;
.super Lcom/motorola/camera/analytics/PostCaptureImageEvent;
.source "SourceFile"


# virtual methods
.method public final getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public final getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public final postProcessData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 7

    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->NUMOFPICSINBURSTMODE:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v3, "MULTI_SHOT_COUNT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v1, v1, v5

    if-nez v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    const-string v1, "XPSR"

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->postProcessData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method
