.class public abstract Lcom/motorola/camera/analytics/LogEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SERVICEMODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    const-string v1, "SERVICEMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/LogEvent;->SERVICEMODE:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getCameraIdForAnalytics(IZ)I
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0, p0}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Ljava/lang/String;ZII)I

    move-result p0

    return p0
.end method

.method public static getCameraIdForAnalytics(Ljava/lang/String;ZII)I
    .locals 5

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_MASTER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v1, :cond_11

    .line 5
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_VIDEO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    const/4 p2, 0x6

    if-eqz p1, :cond_2

    return p2

    .line 6
    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_WIDE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x7

    return p0

    .line 7
    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_TELE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p0, 0x8

    return p0

    .line 8
    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_MACRO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p0, 0x9

    return p0

    .line 9
    :cond_5
    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_LOGICAL_TYPE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v3, 0x0

    if-nez p1, :cond_6

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    move-object v4, v3

    goto :goto_1

    .line 10
    :cond_6
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    :goto_1
    check-cast v4, Ljava/lang/Byte;

    if-eq p3, v0, :cond_7

    goto :goto_2

    .line 12
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p3

    :goto_2
    if-eq p3, p2, :cond_9

    const/16 p2, 0x10

    if-eq p3, p2, :cond_9

    const/16 p2, 0x22

    if-ne p3, p2, :cond_8

    goto :goto_3

    :cond_8
    move p2, v2

    goto :goto_4

    :cond_9
    :goto_3
    move p2, v1

    :goto_4
    if-eqz v4, :cond_a

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_DEPTH_TYPES:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    goto :goto_5

    .line 13
    :cond_a
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_LOGICAL_DEPTH_SCENE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_b

    move p3, v1

    goto :goto_5

    :cond_b
    move p3, v2

    :goto_5
    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_6

    :cond_c
    move p2, v2

    :goto_6
    if-eqz p2, :cond_d

    const/16 p0, 0xa

    return p0

    :cond_d
    if-nez p1, :cond_e

    goto :goto_7

    .line 14
    :cond_e
    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    :goto_7
    check-cast v3, Ljava/lang/Byte;

    if-eqz v3, :cond_f

    .line 16
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move v2, v1

    :cond_f
    if-eqz v2, :cond_10

    const/16 p0, 0xb

    return p0

    :cond_10
    return v1

    :cond_11
    if-nez p2, :cond_13

    if-eqz p1, :cond_12

    const/4 p0, 0x5

    return p0

    :cond_12
    return v2

    :cond_13
    return v0

    :cond_14
    :goto_8
    const/4 p0, 0x2

    return p0
.end method

.method public static getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_d

    const/4 p2, 0x6

    if-ne p0, p2, :cond_0

    const-string p0, "SS_DEPTH"

    return-object p0

    :cond_0
    const/16 p2, 0x10

    if-ne p0, p2, :cond_1

    const-string p0, "SS_SEGMENTATION"

    return-object p0

    :cond_1
    const/16 p2, 0x12

    if-ne p0, p2, :cond_2

    const-string p0, "SS_SINGLE_BOKEH"

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "SS_PRO"

    return-object p0

    :cond_3
    const/16 p2, 0xc

    if-ne p0, p2, :cond_4

    const-string p0, "SS_SPOT_COLOR"

    return-object p0

    :cond_4
    const/16 p2, 0x18

    if-eq p0, p2, :cond_c

    const/16 p2, 0x1f

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 p2, 0x1d

    if-eq p0, p2, :cond_b

    const/16 p2, 0x23

    if-ne p0, p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 p2, 0x27

    if-ne p0, p2, :cond_7

    const-string p0, "DOC"

    return-object p0

    :cond_7
    const/16 p2, 0x28

    if-ne p0, p2, :cond_8

    const-string p0, "SLIDE"

    return-object p0

    :cond_8
    const/16 p2, 0x29

    if-ne p0, p2, :cond_9

    const-string p0, "PHOTO_DUAL"

    return-object p0

    :cond_9
    const/16 p2, 0x30

    if-ne p0, p2, :cond_a

    const-string p0, "BOOTH"

    return-object p0

    :cond_a
    const/16 p2, 0x2f

    if-ne p0, p2, :cond_19

    const-string p0, "MIRROR"

    return-object p0

    :cond_b
    :goto_0
    const-string p0, "SS_HIGH_MP"

    return-object p0

    :cond_c
    :goto_1
    const-string p0, "SS_NIGHT_VISION"

    return-object p0

    :cond_d
    sget-object v0, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_e

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "MS_PRO"

    return-object p0

    :cond_e
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_18

    const/4 v0, 0x3

    if-ne p0, v0, :cond_f

    const-string p0, "CAMCORDER_SLOWMO"

    return-object p0

    :cond_f
    const/16 v0, 0xd

    if-ne p0, v0, :cond_10

    const-string p0, "CAMCORDER_TIMELAPSE"

    return-object p0

    :cond_10
    const/16 v0, 0x22

    if-ne p0, v0, :cond_11

    const-string p0, "CAMCORDER_DEPTH"

    return-object p0

    :cond_11
    const/16 v0, 0x24

    if-ne p0, v0, :cond_12

    const-string p0, "CAMCORDER_SELECT_COLOR"

    return-object p0

    :cond_12
    const/16 v0, 0x25

    if-ne p0, v0, :cond_13

    const-string p0, "VIDEO_FACE"

    return-object p0

    :cond_13
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_14

    const-string p0, "VIDEO_PORTRAIT"

    return-object p0

    :cond_14
    const/16 v0, 0x26

    if-ne p0, v0, :cond_15

    const-string p0, "VIDEO_DUAL"

    return-object p0

    .line 1
    :cond_15
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_16

    move p0, v1

    goto :goto_2

    :cond_16
    move p0, v0

    :goto_2
    if-eqz p0, :cond_17

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p2, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    move v0, v1

    :cond_17
    if-eqz v0, :cond_19

    const-string p0, "VIDEO_NV"

    return-object p0

    .line 2
    :cond_18
    sget-object p0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne p1, p0, :cond_19

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "SS_GROUP_SELFIE"

    return-object p0

    :cond_19
    invoke-static {p1}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/motorola/camera/analytics/LogEvent$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "SINGLESHOT"

    goto :goto_0

    :pswitch_0
    const-string p0, "CINEMAGRAPH"

    goto :goto_0

    :pswitch_1
    const-string p0, "UHD"

    goto :goto_0

    :pswitch_2
    const-string p0, "SLOW_MOTION"

    goto :goto_0

    :pswitch_3
    const-string p0, "CAMCORDER"

    goto :goto_0

    :pswitch_4
    const-string p0, "PANORAMA"

    goto :goto_0

    :pswitch_5
    const-string p0, "MULTISHOT"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public abstract getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;
.end method

.method public abstract getEventVersion()Ljava/lang/String;
.end method

.method public getSessionSeqId(Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)J
    .locals 0

    const-string p0, "SEQID"

    invoke-virtual {p1, p0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SEQID"

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/LogEvent;->getSessionSeqId(Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "APKVER"

    const v2, 0x55d71eb

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p2, v0, p3}, Lcom/motorola/camera/analytics/LogEvent;->addData(Landroidx/work/impl/StartStopTokens;Landroid/os/Bundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/LogEvent;->getEventType()Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    move-result-object p2

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/LogEvent;->getEventVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {p3, p2, p0, v0}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Lcom/motorola/camera/analytics/AnalyticsService$EventType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p1, Lcom/motorola/camera/analytics/AnalyticsService;->mServiceHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
