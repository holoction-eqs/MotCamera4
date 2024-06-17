.class public final Lcom/motorola/camera/analytics/PostCaptureVideoEvent;
.super Lcom/motorola/camera/analytics/PostCaptureEvent;
.source "SourceFile"


# direct methods
.method public static getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/motorola/camera/VideoFormat;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/motorola/camera/VideoFormat;

    invoke-direct {p0}, Lcom/motorola/camera/VideoFormat;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {p0}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;->getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_FLASHMODE"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "torch"

    goto :goto_0

    :cond_1
    const-string p0, "off"

    :goto_0
    return-object p0
.end method

.method public final getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_ZOOM"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final postProcessData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    check-cast v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    const-string v8, "USECASE"

    const-string v11, "Camcorder"

    invoke-virtual {v0, v8, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "SAVE_TIME"

    const-wide/16 v11, 0x0

    invoke-virtual {v3, v8, v11, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_1
    const-string v13, "SVTIME"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-nez v8, :cond_3

    move v8, v10

    goto :goto_1

    :cond_3
    move v8, v9

    :goto_1
    if-nez v8, :cond_4

    const-string v8, "VIDLNGTH"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v0, v8, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->VIDEOSNAPSHOTS:Landroidx/core/text/BidiFormatter$Builder;

    const-string v8, "SNAPSHOT_COUNT"

    invoke-virtual {v3, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x2

    const/4 v13, -0x1

    if-eqz v5, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->SUPER_SLOW_MOTION_TOGGLE:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    if-eqz v7, :cond_9

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->SUPER_SLOW_MOTION_ACTION:Landroidx/core/text/BidiFormatter$Builder;

    const-string v6, "ANALYTICS_SSMACTION"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_8

    if-eq v6, v10, :cond_7

    if-eq v6, v8, :cond_6

    :goto_2
    move v6, v13

    goto :goto_3

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    move v6, v10

    goto :goto_3

    :cond_8
    move v6, v9

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string v5, "ANALYTICS_SSMEDIT"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v10

    if-eqz v6, :cond_9

    const-string v6, "SSMEDIT"

    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    const-string v6, "ANALYTICS_EXPOSURE"

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_a

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v14, v6, v14

    if-nez v14, :cond_b

    move v14, v10

    goto :goto_4

    :cond_b
    move v14, v9

    :goto_4
    if-nez v14, :cond_c

    const-string v14, "XPSR"

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v14, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_c
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {v5}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;->getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_d
    const-string v8, "FPS"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v0, v8, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->HEVC:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {v4}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;->getVideoFormat(Ljava/util/Map;)Lcom/motorola/camera/VideoFormat;

    move-result-object v8

    iget-boolean v8, v8, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    if-eqz v8, :cond_e

    move v8, v10

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string v5, "LAST_LUX"

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    if-nez v5, :cond_f

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_f
    if-eqz v5, :cond_10

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-nez v6, :cond_10

    move v6, v10

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_11

    const-string v6, "LUX"

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_11
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/motorola/camera/analytics/PostCaptureEvent;->MICROPHONE:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_12
    const/16 v5, 0x26

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static/range {p2 .. p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->populateDualCaptureData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_13
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_14

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->VSTAB:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_14
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->AUDIO_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUDIO_ZOOM:Landroidx/core/text/BidiFormatter$Builder;

    const-string v6, "ANALYTICS_AUDIO_ZOOM"

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v10, 0x2

    goto :goto_7

    :cond_15
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_7

    :cond_16
    const/4 v10, 0x0

    :goto_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_17
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->VIDEO_PORTRAIT:Landroidx/core/text/BidiFormatter$Builder;

    if-eqz v1, :cond_18

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    :try_start_0
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    const-string v4, "Portrait Level format is not valid, sending default value"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_8
    invoke-virtual {v5, v0, v1}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_19
    :goto_9
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq v1, v2, :cond_1a

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_1b

    :cond_1a
    const-string v1, "ANALYTICS_VIDEO_ZOOM_CHANGES"

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    :cond_1b
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->VIDEO_SAT_ZOOM_TAPS:Landroidx/core/text/BidiFormatter$Builder;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/core/text/BidiFormatter$Builder;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method
