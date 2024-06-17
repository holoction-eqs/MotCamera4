.class public abstract Lcom/motorola/camera/settings/SettingsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/util/Size;Lcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 1
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 2
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Integer;Ljava/util/List;[I[I)V
    .locals 3

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 5
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 6
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 7
    iput-object p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 8
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 9
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    const p2, 0x7f1203be

    .line 10
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const/4 p2, -0x1

    .line 11
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 12
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 p2, 0x3

    .line 13
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Integer;Ljava/util/List;[I[I[I)V
    .locals 3

    .line 15
    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 16
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 17
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 18
    iput-object p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 19
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 20
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 21
    iput-object p6, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    const p2, 0x7f1203e9

    .line 22
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    const p2, 0x7f12052f

    .line 23
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 24
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 p2, 0x2

    .line 25
    iput p2, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mCacheType:I

    .line 26
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 28
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 30
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 31
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 33
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 34
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 35
    iput-object p6, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 36
    iput p7, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 37
    iput p8, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 38
    iput-object p9, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 39
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V
    .locals 3

    .line 40
    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 41
    new-instance v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v2, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput p3, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 43
    iput-object p4, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 44
    iput-object p5, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 45
    iput-object p6, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mToast:[I

    .line 46
    iput-object p7, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAndroidIcons:[I

    .line 47
    iput p8, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mDialogTitle:I

    .line 48
    iput p9, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mContentDescription:I

    .line 49
    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 50
    invoke-virtual {v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 51
    iput p2, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mPersistType:I

    .line 52
    iput-object p3, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mAllowedValues:Ljava/util/List;

    .line 53
    iput-object p4, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mResources:[I

    .line 54
    iput-object p5, v0, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 55
    invoke-virtual {v0}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSettingsMap()Ljava/util/HashMap;
    .locals 41

    const-string v1, "SettingsFactory"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Error: JSON parsing exception "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    const/4 v12, 0x2

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SINGLE_BOKEH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_DEPTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELFIE_PORTRAIT_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_PHOTO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SPOT_COLOR_VIDEO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SEGMENTATION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PANORAMA_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_HIGH_MP_REMOSAIC_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MACRO_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLOW_MOTION_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_SETTING_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v14, v0, v4, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MIRROR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SMART_EIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXITED_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    invoke-static {v14, v0, v4, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TIMELAPSE_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_MODE_DRAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_EXIT_CAMERA_AFTER_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_EXITED_SUB_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CHECK_LOCATION_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ENHANCE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_DUAL_SCREEN_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FACE_DETECT_ALWAYS_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_BASIC_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v11, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_VIDEO_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_FLIP_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TUTORIAL_SKIPPED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v15, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_TORCH_OFF:Ljava/util/List;

    const v8, 0x7f1203bb

    const v4, 0x7f1203bd

    const v7, 0x7f1203e8

    const v9, 0x7f1203bc

    filled-new-array {v8, v4, v7, v9}, [I

    move-result-object v9

    const v4, 0x7f0801d3

    const v7, 0x7f0801d2

    const v8, 0x7f0801d4

    const v12, 0x7f0801d7

    filled-new-array {v7, v8, v12, v4}, [I

    move-result-object v21

    const v22, 0x7f1203ba

    const v23, 0x7f1203f6

    sget-object v8, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 v7, 0x4

    move-object v4, v14

    move-object/from16 v18, v8

    move-object v8, v0

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v27, v11

    move/from16 v11, v22

    const/16 v19, 0x2

    move/from16 v12, v23

    move-object/from16 v20, v1

    move-object v1, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_OFF:Ljava/util/List;

    const/4 v12, 0x1

    invoke-static {v14, v4, v5, v12, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->HW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v12, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v0, 0x7f1203e7

    const v4, 0x7f1203bb

    const v7, 0x7f1203e8

    filled-new-array {v4, v7, v0}, [I

    move-result-object v9

    const v0, 0x7f0801d5

    const v4, 0x7f0801d6

    const v7, 0x7f0801d7

    filled-new-array {v0, v7, v4}, [I

    move-result-object v10

    const v11, 0x7f1203e6

    const v0, 0x7f1203f6

    const/4 v7, 0x4

    move-object v4, v14

    move-object v8, v13

    move/from16 v26, v12

    move v12, v0

    move-object v0, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    const v4, 0x7f1203b8

    const v7, 0x7f1203b7

    filled-new-array {v4, v7}, [I

    move-result-object v9

    const v4, 0x7f12003b

    const v7, 0x7f120586

    filled-new-array {v4, v7}, [I

    move-result-object v10

    const v4, 0x7f080194

    const v7, 0x7f080193

    filled-new-array {v4, v7}, [I

    move-result-object v11

    const v12, 0x7f1203b6

    const v21, 0x7f1203b6

    const/4 v7, 0x4

    move-object v4, v14

    move-object v8, v13

    move-wide/from16 v22, v2

    move-object v2, v13

    move/from16 v13, v21

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 v12, v26

    move-object/from16 v13, v27

    invoke-static {v14, v3, v13, v12, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LL_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v13, v12, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->HDR_VALUES:Ljava/util/List;

    const v3, 0x7f1203fb

    const v4, 0x7f1203f9

    const v7, 0x7f1203fc

    filled-new-array {v4, v7, v3}, [I

    move-result-object v9

    const v3, 0x7f1205a7

    const v4, 0x7f1205a8

    const v7, 0x7f1205a9

    filled-new-array {v4, v7, v3}, [I

    move-result-object v10

    const v3, 0x7f08017e

    const v4, 0x7f08017d

    const v7, 0x7f08017f

    filled-new-array {v4, v7, v3}, [I

    move-result-object v11

    const v3, 0x7f1203fa

    const v21, 0x7f1203fa

    const/4 v7, 0x2

    move-object v4, v14

    move v12, v3

    move-object v3, v13

    move/from16 v13, v21

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->HDR_WRAPPER:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 v13, v19

    invoke-static {v14, v4, v15, v13, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/AppFeatures;->getInstance()Lcom/motorola/camera/AppFeatures;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DUAL_SCREEN_DEFAULT_PREVIEW_REVIEW_ON:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v11

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const v12, 0x7f120421

    const v9, 0x7f1203f5

    filled-new-array {v12, v9}, [I

    move-result-object v8

    sget-object v7, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object v4, v14

    move-object/from16 v19, v7

    move-object v7, v1

    move v13, v9

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    move/from16 v4, v26

    goto :goto_1

    :cond_0
    move/from16 v4, v17

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v12, v13}, [I

    move-result-object v8

    move-object v4, v14

    move-object v7, v1

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v10, :cond_1

    const/4 v4, 0x2

    goto :goto_2

    :cond_1
    move/from16 v4, v17

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_VALUES:Ljava/util/List;

    const v4, 0x7f120250

    const v8, 0x7f12024e

    const v9, 0x7f12024f

    filled-new-array {v8, v9, v4}, [I

    move-result-object v8

    move-object v4, v14

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_VALUES:Ljava/util/List;

    const v4, 0x7f12058f

    const v7, 0x7f12058e

    const v9, 0x7f12044f

    filled-new-array {v4, v7, v9}, [I

    move-result-object v10

    filled-new-array {v4, v7, v9}, [I

    move-result-object v11

    const v4, 0x7f0801be

    const v7, 0x7f0801bf

    const v9, 0x7f0801c0

    filled-new-array {v7, v9, v4}, [I

    move-result-object v24

    const v25, 0x7f120255

    const v27, 0x7f120255

    const/4 v7, 0x2

    move-object v4, v14

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v24

    move/from16 v12, v25

    move-object/from16 v24, v0

    const/4 v0, 0x2

    move/from16 v13, v27

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v0}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v12, 0x7f1203f5

    const v13, 0x7f120421

    filled-new-array {v13, v12}, [I

    move-result-object v8

    move-object v4, v14

    move-object v6, v15

    move-object v7, v1

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v13, v12}, [I

    move-result-object v8

    move-object v6, v3

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v13, v12}, [I

    move-result-object v8

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v13, v12}, [I

    move-result-object v8

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v13, v12}, [I

    move-result-object v8

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v13, v12}, [I

    move-result-object v8

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v4, 0x7f1203cb

    const v6, 0x7f1203ca

    filled-new-array {v4, v6}, [I

    move-result-object v9

    const v4, 0x7f080254

    const v6, 0x7f080253

    filled-new-array {v4, v6}, [I

    move-result-object v10

    const v11, 0x7f120256

    const v21, 0x7f120256

    const/4 v7, 0x2

    move-object v4, v14

    move-object v6, v3

    move-object v8, v1

    move v0, v12

    move/from16 v12, v21

    move-object/from16 v21, v2

    move v2, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v2, v0}, [I

    move-result-object v8

    move-object v7, v1

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v2, v0}, [I

    move-result-object v8

    move-object v6, v15

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x2

    invoke-static {v14, v4, v15, v5, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v13, 0x7f1203b5

    const v12, 0x7f1203b4

    filled-new-array {v13, v12}, [I

    move-result-object v9

    const v4, 0x7f080196

    const v6, 0x7f080195

    filled-new-array {v4, v6}, [I

    move-result-object v10

    const v11, 0x7f120233

    const v27, 0x7f120233

    const/4 v7, 0x2

    move-object v4, v14

    move-object v6, v3

    move-object v8, v1

    move v0, v12

    move/from16 v12, v27

    move v2, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v2, v0}, [I

    move-result-object v9

    const v0, 0x7f0801e4

    const v2, 0x7f0801e3

    filled-new-array {v0, v2}, [I

    move-result-object v10

    const v11, 0x7f120231

    const v12, 0x7f120231

    move-object v4, v14

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120421

    const v2, 0x7f1203f5

    filled-new-array {v0, v2}, [I

    move-result-object v8

    move-object v6, v3

    move-object v7, v1

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->STORAGE_VALUES:Ljava/util/List;

    const v0, 0x7f1204b8

    const v2, 0x7f1204b7

    filled-new-array {v0, v2}, [I

    move-result-object v9

    const v0, 0x7f080275

    filled-new-array {v0, v0}, [I

    move-result-object v10

    const v11, 0x7f12041d

    const/4 v12, -0x1

    sget-object v13, Lcom/motorola/camera/settings/Setting$UpdateType;->PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;

    const/4 v7, 0x2

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x2

    invoke-static {v14, v0, v3, v2, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_DOC_POINT:Landroid/graphics/Point;

    move/from16 v13, v26

    invoke-static {v14, v0, v2, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f1203f8

    const v2, 0x7f1203f7

    filled-new-array {v0, v2}, [I

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

    move-object v6, v3

    move-object v7, v1

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v2, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v4, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v2, v15, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v0, 0x7f120421

    const v2, 0x7f1203f5

    filled-new-array {v0, v2}, [I

    move-result-object v8

    move-object v4, v14

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v0, v2}, [I

    move-result-object v8

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ALL_TIMER_VALUES:Ljava/util/List;

    const v0, 0x7f1203e3

    const v2, 0x7f1203e5

    const v4, 0x7f1203e4

    filled-new-array {v4, v4, v0, v2}, [I

    move-result-object v9

    const v0, 0x7f080279

    const v2, 0x7f08027b

    const v4, 0x7f08027a

    filled-new-array {v4, v4, v0, v2}, [I

    move-result-object v10

    const v11, 0x7f1203e2

    const v12, 0x7f12041e

    const/4 v7, 0x4

    move-object v4, v14

    move v0, v13

    move-object/from16 v13, v19

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    const/16 v2, 0x19

    new-array v9, v2, [I

    fill-array-data v9, :array_0

    new-array v10, v2, [I

    fill-array-data v10, :array_1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v7, 0x2

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v14, v2, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v13, ""

    invoke-static {v14, v2, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_ORDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v2, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION_VALUES:Ljava/util/List;

    const v2, 0x7f120288

    const v4, 0x7f120287

    filled-new-array {v2, v4}, [I

    move-result-object v8

    move-object v4, v14

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_MODE_VALUES_1:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    sget-object v12, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v11, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v4, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v4, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v26, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_VALUES:Ljava/util/List;

    const/16 v9, 0xe

    new-array v8, v9, [I

    fill-array-data v8, :array_2

    new-array v7, v9, [I

    fill-array-data v7, :array_3

    const v27, 0x7f1203b3

    const v28, 0x7f1203b3

    const/16 v29, 0x2

    move-object v4, v14

    move-object v6, v2

    move-object/from16 v30, v7

    move/from16 v7, v29

    move-object/from16 v29, v8

    move-object/from16 v8, v26

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    move-object/from16 v33, v11

    move/from16 v11, v27

    move-object/from16 v34, v12

    move/from16 v12, v28

    move-object/from16 v35, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION_VALUES:Ljava/util/List;

    move/from16 v12, v17

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/util/Size;

    invoke-interface {v13}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v11, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$14:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    new-instance v7, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v12, v11}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;-><init>(ILandroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v9

    invoke-interface {v13}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v10, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$13:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    new-instance v7, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v10}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;-><init>(ILandroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v17

    const v27, 0x7f1203d5

    const v28, 0x7f1203d5

    const/4 v7, 0x2

    move-object v4, v14

    move-object v8, v13

    move-object/from16 v36, v10

    move-object/from16 v10, v17

    move-object v0, v11

    move/from16 v11, v27

    move/from16 v12, v28

    move-object/from16 v27, v3

    move-object v3, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v28, 0x1e

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v29, Lcom/motorola/camera/settings/SettingsManager;->FRAME_RATE_VALUES:Ljava/util/List;

    const/4 v13, 0x7

    new-array v9, v13, [I

    fill-array-data v9, :array_4

    new-array v10, v13, [I

    fill-array-data v10, :array_5

    const v11, 0x7f1203c2

    const v12, 0x7f1203c2

    const/4 v7, 0x4

    move-object/from16 v8, v29

    move-object/from16 v30, v1

    move v1, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v13, 0xe

    new-array v9, v13, [I

    fill-array-data v9, :array_6

    new-array v10, v13, [I

    fill-array-data v10, :array_7

    const v11, 0x7f1203b3

    const v12, 0x7f1203b3

    const/4 v7, 0x2

    move-object v6, v2

    move-object/from16 v8, v26

    move v2, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v13, 0x0

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/util/Size;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v7, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v13, v0}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;-><init>(ILandroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;

    move-object/from16 v8, v36

    const/4 v7, 0x1

    invoke-direct {v4, v7, v8}, Lcom/motorola/camera/settings/VideoSizeFactoryHelper$Companion$$ExternalSyntheticLambda0;-><init>(ILandroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v10

    const v11, 0x7f1203d5

    const v12, 0x7f1203d5

    const/4 v7, 0x2

    move-object v4, v14

    move-object v8, v3

    move v0, v13

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v1, [I

    fill-array-data v9, :array_8

    new-array v10, v1, [I

    fill-array-data v10, :array_9

    new-array v11, v1, [I

    fill-array-data v11, :array_a

    const v12, 0x7f1203c2

    const v13, 0x7f1203c2

    const/4 v7, 0x4

    move-object/from16 v8, v29

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v4, 0x40f00000    # 7.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    const/4 v13, 0x4

    invoke-static {v14, v3, v4, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_ON_OFF:Ljava/util/List;

    const v3, 0x7f1203df

    const v12, 0x7f1203e1

    const v11, 0x7f1203e0

    filled-new-array {v3, v12, v11}, [I

    move-result-object v9

    const v3, 0x7f1205b1

    const v4, 0x7f1205c0

    const v7, 0x7f1205b2

    filled-new-array {v4, v7, v3}, [I

    move-result-object v10

    const v3, 0x7f080272

    const v7, 0x7f080274

    const v4, 0x7f080273

    filled-new-array {v3, v7, v4}, [I

    move-result-object v3

    const v29, 0x7f1203de

    const v31, 0x7f120522

    const/16 v36, 0x4

    move v1, v4

    move-object v4, v14

    move v2, v7

    move/from16 v7, v36

    move v1, v11

    move-object v11, v3

    move v3, v12

    move/from16 v12, v29

    move/from16 v29, v13

    move/from16 v13, v31

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_SUPPORT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v21

    invoke-virtual {v5, v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x2

    invoke-static {v14, v4, v6, v5, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v6, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    move-object/from16 v7, v33

    invoke-direct {v5, v7, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    move-object/from16 v11, v34

    invoke-virtual {v5, v11}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v4, 0x7f1203eb

    const v7, 0x7f1203ea

    filled-new-array {v4, v7}, [I

    move-result-object v8

    const v4, 0x7f1205ba

    const v7, 0x7f1205b9

    filled-new-array {v4, v7}, [I

    move-result-object v9

    const v4, 0x7f080284

    const v7, 0x7f080282

    filled-new-array {v4, v7}, [I

    move-result-object v10

    move-object v4, v14

    move-object v7, v13

    invoke-static/range {v4 .. v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Integer;Ljava/util/List;[I[I[I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION_SUGGESTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v10, v30

    const/4 v5, 0x2

    invoke-static {v14, v4, v15, v5, v10}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL_ON_OFF:Ljava/util/List;

    const v4, 0x7f1203fd

    const v5, 0x7f1203f0

    const v9, 0x7f120400

    const v12, 0x7f1203ff

    filled-new-array {v4, v5, v9, v12}, [I

    move-result-object v9

    const v4, 0x7f080202

    const v5, 0x7f080200

    const v12, 0x7f080202

    const v2, 0x7f080201

    filled-new-array {v4, v5, v12, v2}, [I

    move-result-object v2

    const v12, 0x7f1203d1

    const v30, 0x7f1204fb

    const/16 v31, 0x2

    move-object v4, v14

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, v31

    move-object/from16 v37, v10

    move-object v10, v2

    move-object v2, v11

    move v11, v12

    move/from16 v12, v30

    move-object/from16 v30, v13

    move-object/from16 v13, v19

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->EXTERNAL_MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MIC_INTERNAL_EXTERNAL:Ljava/util/List;

    const/4 v7, 0x2

    invoke-static {v14, v4, v5, v7, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v1}, [I

    move-result-object v9

    const v1, 0x7f080273

    const v3, 0x7f080274

    filled-new-array {v3, v1}, [I

    move-result-object v10

    const v11, 0x7f1203de

    const v12, 0x7f120522

    const/4 v7, 0x2

    move-object v4, v14

    move-object/from16 v8, v30

    move-object/from16 v13, v18

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DTFE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v3, v37

    const/4 v4, 0x2

    invoke-static {v14, v1, v15, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ROI_WEIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v1, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v5, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v5, 0x1

    invoke-static {v14, v1, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v13, v27

    invoke-static {v14, v1, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v14, v1, v13, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_LOCATION:Landroid/location/Location;

    invoke-static {v14, v1, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v1, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AF_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v12, v35

    invoke-static {v14, v1, v12, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AWB_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LENS_SHADING_CALIBRATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v13, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING_VALUES:Ljava/util/List;

    const/4 v6, 0x2

    invoke-static {v14, v1, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_VIEW_DISPLAY_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QUICK_VIEW_DISPLAY_MODE_VALUES:Ljava/util/List;

    invoke-static {v14, v1, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->INPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_SURFACE_TEX_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->cacheType()V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v9, v19

    invoke-static {v14, v1, v11, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/util/Size;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v11, v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/util/Size;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v8, v18

    invoke-static {v14, v1, v11, v8}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/util/Size;Lcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v14, v1, v11, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v11, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v13, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    const/16 v1, 0xe

    new-array v7, v1, [I

    fill-array-data v7, :array_b

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    const v18, 0x7f1203b3

    const v19, 0x7f1203b3

    const/16 v21, 0x2

    move-object v4, v14

    move-object/from16 v27, v7

    move/from16 v7, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v27

    move-object v10, v1

    move-object v1, v11

    move/from16 v11, v18

    move-object/from16 v38, v12

    move/from16 v12, v19

    move-object v0, v13

    move-object/from16 v13, v21

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x1

    invoke-static {v14, v4, v0, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    const v7, 0x7f120505

    invoke-virtual {v5, v7}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION_PRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ALWAYS_AWARE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->AA_OCR_VALUES:Ljava/util/List;

    const/4 v8, 0x2

    invoke-static {v14, v4, v6, v8, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v8, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v8, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v6, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-direct {v6}, Lcom/motorola/camera/settings/CaptureIntent;-><init>()V

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FACING_VALUES:Ljava/util/List;

    invoke-static {v14, v4, v6, v8, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT_DEFAULT:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {v14, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->COMPOSITION_GUIDE_VALUES:Ljava/util/List;

    const/4 v7, 0x2

    invoke-static {v14, v4, v6, v7, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v5, v6, v8}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW_VALUES:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_REPROC:Z

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v14, v5, v4, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MCF:Z

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v14, v5, v4, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK0:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v4, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK1:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v4, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_MASK2:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v4, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v4, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGAD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v6, "0"

    invoke-static {v14, v4, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGML_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v4, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x1

    invoke-static {v14, v4, v0, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_SP_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ACTIVITY_TIMEOUT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v15, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MS_AVG_CAPTURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v5, 0x14d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_FEATURE_LIMITED_SHOW_TOAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x1

    invoke-static {v14, v4, v15, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->LIMITED_TOAST_PANO_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->OIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v24

    invoke-static {v14, v4, v5, v13, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v15, v7, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->JPEG_QUALITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v5, 0x5f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->THUMBNAIL_JPEG_QUALITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v5, 0x5f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_PREVIEW_ON_SHUTTER_UP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE_VALUES:Ljava/util/List;

    invoke-static {v14, v4, v6, v13, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    const v6, 0x7f120504

    invoke-virtual {v5, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v12, v38

    const/4 v5, 0x1

    invoke-static {v14, v4, v12, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->shouldFaceBeautyDefaultAuto()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VALUES:Ljava/util/List;

    const v4, 0x7f1203f3

    const v9, 0x7f1203f1

    const v10, 0x7f1203f2

    filled-new-array {v9, v10, v4}, [I

    move-result-object v9

    const v4, 0x7f0801a1

    const v10, 0x7f08019e

    const v11, 0x7f0801a2

    filled-new-array {v10, v11, v4}, [I

    move-result-object v10

    const v11, 0x7f1203b9

    const v27, 0x7f1204f0

    move-object v4, v14

    move-object/from16 v39, v12

    move/from16 v12, v27

    move-object/from16 v34, v2

    move v2, v13

    move-object/from16 v13, v21

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v5, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL_VALUES:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v5, v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_WHITE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_RED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_NATURAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_EYE_ENLARGE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FINETUNE_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_FIRST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x2

    invoke-static {v14, v4, v15, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_DEFAULT_FEATURES:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v15, v39

    invoke-static {v14, v4, v15, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CURRENT_PHYSICAL_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v15, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_BIG_EYE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_FACE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v4, v5, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    move/from16 v5, v29

    invoke-static {v14, v4, v0, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v4, v0, v5, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v14, v3, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_BLUR_RESULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_EFFECT_TYPE:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CUTOUT_DEFAULT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FV_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_WIDE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ST_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_CU_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {v14, v0, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14, v0, v7, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v0, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v14, v0, v3, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getPortraitLensDefaultOption()Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PORTRAIT_LENS_FOCAL_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f120421

    const v4, 0x7f1203f5

    filled-new-array {v3, v4}, [I

    move-result-object v8

    move-object v4, v14

    move-object v6, v0

    move-object v7, v12

    move-object/from16 v9, v26

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v14, v3, v4, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_SCENE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_LOW_LIGHT_SELFIE_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_AI_IMAGE_STABILIZATION_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_SLIDE_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SHADOW_REMOVAL_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v5, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_VALUES:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    const v5, 0x7f120509

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)V

    invoke-virtual {v4, v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE_KELVIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/16 v4, 0x8fc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v3, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ISO_ALLOW_VALUES:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_d

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->resources([I)V

    const v5, 0x7f120506

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)V

    invoke-virtual {v4, v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    const-wide/16 v31, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME_VALUES:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    const/16 v5, 0x22

    new-array v5, v5, [I

    fill-array-data v5, :array_e

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->resources([I)V

    const v5, 0x7f120508

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->contentDescription(I)V

    invoke-virtual {v4, v13}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE_VALUES:Ljava/util/List;

    const-string v5, "Auto"

    const/4 v6, 0x1

    invoke-static {v14, v3, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->SENSOR_MODE_VALUES:Ljava/util/List;

    const-string v5, "GyroScope"

    invoke-static {v14, v3, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "GyroScope"

    invoke-static {v14, v3, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PROJECTION_MODE_VALUES:Ljava/util/List;

    const-string v5, "Equirectangular"

    invoke-static {v14, v3, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MOTION_DETECTION_MODE_VALUES:Ljava/util/List;

    const-string v5, "HighQuality"

    invoke-static {v14, v3, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v1, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PANO_CAPTURE_MODE_VALUES:Ljava/util/List;

    const-string v5, "REPEATING_REQUEST"

    invoke-static {v14, v3, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v6, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v6, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_SAVE_OUTPUT_BY_ENGINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v11, v6, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v14, v3, v0, v4, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v4, 0x43e10000    # 450.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GOAL_ANGLE_VALUES:Ljava/util/List;

    invoke-static {v14, v3, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v4, 0x3f88f5c3    # 1.07f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO_GAIN_VALUES:Ljava/util/List;

    invoke-static {v14, v3, v4, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v1, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v1, v6}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v14, v1, v0, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v4, v30

    invoke-static {v14, v1, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_EX_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v11, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SUPPORT_ALL_SIZES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v14, v1, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x1

    invoke-static {v14, v1, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FRONT_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v14, v1, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING_VALUES:Ljava/util/List;

    invoke-static {v14, v1, v4, v2, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_STOP_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v14, v1, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSIONS:Ljava/util/List;

    invoke-static {v14, v1, v4, v3, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v12}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ON_OFF:Ljava/util/List;

    const v2, 0x7f1203b1

    const v3, 0x7f1203b0

    const v4, 0x7f1203b2

    filled-new-array {v3, v4, v2}, [I

    move-result-object v9

    const v2, 0x7f080185

    const v3, 0x7f080184

    const v4, 0x7f080186

    filled-new-array {v3, v4, v2}, [I

    move-result-object v10

    const v2, 0x7f1203af

    const v3, 0x7f1204fc

    const/4 v7, 0x4

    move-object v4, v14

    move-object v8, v1

    move-object/from16 v40, v11

    move v11, v2

    move-object v2, v12

    move v12, v3

    move-object v3, v13

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[IIILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-wide/16 v6, 0xfa0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS_VALUES:Ljava/util/List;

    const/4 v4, 0x7

    new-array v8, v4, [I

    fill-array-data v8, :array_f

    move-object v4, v14

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v4, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;

    iget-object v5, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-direct {v4, v15, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->persistType$enumunboxing$(I)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MLRN_GROUND_TRUTHS_VALUES:Ljava/util/List;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->allowedValues(Ljava/util/List;)V

    move-object/from16 v6, v34

    invoke-virtual {v4, v6}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->updateType(Lcom/motorola/camera/settings/Setting$UpdateType;)V

    invoke-virtual {v4}, Lcom/motorola/camera/settings/SettingsFactory$SettingBuilder;->build()Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v5, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v5, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_COMPOSITION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->ON_OFF:Ljava/util/List;

    invoke-static {v14, v1, v3, v5, v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMATS:Ljava/util/List;

    const v1, 0x7f1203c0

    const v3, 0x7f1203bf

    const v4, 0x7f1203c1

    filled-new-array {v3, v4, v1}, [I

    move-result-object v8

    const v1, 0x7f0801da

    const v3, 0x7f0801d8

    const v4, 0x7f0801d9

    filled-new-array {v3, v4, v1}, [I

    move-result-object v9

    move-object v4, v14

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Integer;Ljava/util/List;[I[I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v14, v1, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_AUTO_CAPTURE_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v12, v40

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "NONE"

    invoke-static {v14, v1, v4, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FOOD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_PET_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_STILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TODDLER_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_HOLIDAY_LIGHTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_SUNSET_SUNRISE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MOON:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FIREWORKS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_TEXT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_BLUESKY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_FLOWER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_ADJUSTMENT_GREENERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AI_SCENE_ADJUSTMENT_SHOW_PILL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NIGHT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_PHOTO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_GROUPSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_SUGGESTION_NONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_LOW_LIGHT_SELFIE_VALUES:Ljava/util/List;

    const-string v5, "AUTO"

    const/4 v6, 0x1

    invoke-static {v14, v1, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v12, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AI_IMAGE_STABILIZATION_VALUES:Ljava/util/List;

    invoke-static {v14, v1, v5, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_BESTSHOT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AI_CUD_VALUES:Ljava/util/List;

    invoke-static {v14, v1, v5, v6, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomDefaultOff()Z

    move-result v1

    xor-int/2addr v1, v6

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const v1, 0x7f120421

    const v3, 0x7f1203f5

    filled-new-array {v1, v3}, [I

    move-result-object v8

    move-object v4, v14

    move-object v7, v2

    move-object/from16 v9, v26

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    filled-new-array {v1, v3}, [I

    move-result-object v8

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    const v1, 0x7f0801e9

    const v3, 0x7f0801ea

    filled-new-array {v1, v3}, [I

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/AppFeatures;->getInstance()Lcom/motorola/camera/AppFeatures;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_HDR10_PLUS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f0801eb

    const v3, 0x7f0801ec

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const v3, 0x7f120290

    goto :goto_3

    :cond_2
    const v3, 0x7f12028f

    :goto_3
    move-object v11, v1

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v1, 0x7f1203d0

    const v4, 0x7f1203cf

    filled-new-array {v1, v4}, [I

    move-result-object v9

    const v1, 0x7f1205b5

    const v4, 0x7f1205b4

    filled-new-array {v1, v4}, [I

    move-result-object v10

    const/4 v7, 0x2

    move-object v4, v14

    move-object v6, v0

    move-object v8, v2

    move-object v1, v12

    move v12, v3

    move-object/from16 v40, v1

    move-object v1, v13

    move v13, v3

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MTK_VIDEO_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const v3, 0x7f120421

    const v4, 0x7f1203f5

    filled-new-array {v3, v4}, [I

    move-result-object v8

    move-object v4, v14

    move-object v7, v2

    move-object/from16 v9, v26

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x1

    invoke-static {v14, v3, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_CAMERA_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "7"

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUMP_CAPTURE_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUMP_FACE_DETECT_INFO_PER_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v4, v1}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SEQ_ID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/launch/OnLaunchAction;->NONE:Lcom/motorola/camera/launch/OnLaunchAction;

    const/4 v7, 0x1

    invoke-static {v14, v3, v6, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_FILE_FORMATS:Ljava/util/List;

    invoke-static {v14, v3, v6, v4, v7}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v14, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v14, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_SINGLE_SESSION_REMOSAIC_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_INITIAL_PREVIEW_MAX_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CACHE_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v15, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CACHE_SHORTCUT_TAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v15, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG_CACHE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v15, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_IGNORE_SHOT_CONDITIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->QCFA_DEBUG_FORCE_FOUR_STREAMS_QCFA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->LIMIT_SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DISABLE_BG_SERVICE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DISPLAY_FLASH_PROCESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_TURN_ON_LUX:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_TURN_OFF_LUX:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14, v3, v7, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM_LIMIT_MAX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    move-object/from16 v13, v40

    invoke-static {v14, v3, v13, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x2

    invoke-static {v14, v3, v13, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SELFIE_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_ZOOM_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCAN_SLIDE_ROW_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MIGRATE_CAMERA_ID_TO_CAMERA_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v13, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v3, v6, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MTK_SMVR_MODE_AVAILABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MTK_QUICK_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v13, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v15, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "Original"

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_TETRAS_PORTRAIT_REPAIR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v13, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_BST_DSLR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v13, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SYSTEM_SETTING_TRANSITION_ANIMATION_SCALE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v14, v3, v5, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_MANUAL_CONTROL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SHDR_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_VIDEO_HDR_STATE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v4, 0x1

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_SWITCH_PHOTO_REMINDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v4}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Lcom/motorola/camera/Util;->isPrcBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartHighResDefaultOff()Z

    move-result v3

    if-nez v3, :cond_3

    move v10, v4

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v3, 0x7f1203dd

    const v4, 0x7f1203dc

    filled-new-array {v3, v4}, [I

    move-result-object v9

    const v3, 0x7f12059a

    const v4, 0x7f120599

    filled-new-array {v3, v4}, [I

    move-result-object v10

    const v3, 0x7f08026e

    const v4, 0x7f08026d

    filled-new-array {v3, v4}, [I

    move-result-object v11

    const v12, 0x7f1203db

    const v3, 0x7f1203db

    const/4 v7, 0x2

    move-object v4, v14

    move-object v8, v1

    move-object v15, v13

    move v13, v3

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_PREVIEW_ERROR_DELAY_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_ERROR_DELAY_TIMES:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    const/4 v8, 0x0

    move-object v4, v14

    move-object/from16 v9, v26

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Ljava/util/List;[ILcom/motorola/camera/settings/Setting$UpdateType;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GLOBAL_SESSION_UUID:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SMOOTH_ZOOM_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_HIGH_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_NORMAL_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v14, v3, v4, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ISP_HIDL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_OFFLINE_POSTPROC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_RAW_HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DISABLE_BRIGHTNESS_BUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v3, v0, v5}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v3, 0x7f1203ce

    const v4, 0x7f1203cd

    filled-new-array {v3, v4}, [I

    move-result-object v9

    const v3, 0x7f120420

    const v4, 0x7f12041f

    filled-new-array {v3, v4}, [I

    move-result-object v10

    const v3, 0x7f0801e5

    const v4, 0x7f080230

    filled-new-array {v3, v4}, [I

    move-result-object v11

    const v12, 0x7f1203cc

    const v13, 0x7f1203cc

    const/4 v7, 0x2

    move-object v4, v14

    move-object v8, v1

    invoke-static/range {v4 .. v13}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;[I[I[III)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_AUTO_ENHANCE_SHOW_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v3, 0x2

    invoke-static {v14, v1, v15, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AUTO_ENHANCE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3, v2}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;ILjava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PENDING_MEDIA_URIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_PENDING_URIS:[Ljava/lang/String;

    invoke-static {v14, v1, v2, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->NOTIFICATION_PERMISSION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v1, v0, v3}, Lcom/motorola/camera/settings/SettingsFactory;->addSetting(Ljava/util/HashMap;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;I)V

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSettingsMap dur:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v14

    :array_0
    .array-data 4
        0x7f12040c
        0x7f120418
        0x7f12040d
        0x7f12041a
        0x7f120412
        0x7f120414
        0x7f120411
        0x7f12040f
        0x7f120408
        0x7f120417
        0x7f12040f
        0x7f120401
        0x7f12040b
        0x7f120404
        0x7f120407
        0x7f12040b
        0x7f120419
        0x7f120407
        0x7f120416
        0x7f120406
        0x7f120413
        0x7f120405
        0x7f12040a
        0x7f120418
        0x7f12040e
    .end array-data

    :array_1
    .array-data 4
        0x7f080216
        0x7f080228
        0x7f080215
        0x7f080210
        0x7f080226
        0x7f080225
        0x7f08021e
        0x7f08021b
        0x7f08020b
        0x7f080227
        0x7f08021b
        0x7f08020a
        0x7f080214
        0x7f08020c
        0x7f080223
        0x7f080214
        0x7f08021d
        0x7f080223
        0x7f080355
        0x7f08020f
        0x7f080224
        0x7f08020e
        0x7f080213
        0x7f080228
        0x7f080217
    .end array-data

    :array_2
    .array-data 4
        0x7f120378
        0x7f120375
        0x7f120376
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120375
        0x7f120375
        0x7f120376
    .end array-data

    :array_3
    .array-data 4
        0x7f080244
        0x7f080245
        0x7f080247
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080246
        0x7f080246
        0x7f080247
    .end array-data

    :array_4
    .array-data 4
        0x7f1203c4
        0x7f1203c6
        0x7f1203c8
        0x7f1203c3
        0x7f1203c5
        0x7f1203c7
        0x7f1203c9
    .end array-data

    :array_5
    .array-data 4
        0x7f0801dc
        0x7f0801de
        0x7f0801e0
        0x7f0801db
        0x7f0801dd
        0x7f0801df
        0x7f0801e1
    .end array-data

    :array_6
    .array-data 4
        0x7f120378
        0x7f120375
        0x7f120376
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120375
        0x7f120375
        0x7f120376
    .end array-data

    :array_7
    .array-data 4
        0x7f080244
        0x7f080245
        0x7f080247
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080246
        0x7f080246
        0x7f080247
    .end array-data

    :array_8
    .array-data 4
        0x7f1203c4
        0x7f1203c6
        0x7f1203c8
        0x7f1203c3
        0x7f1203c5
        0x7f1203c7
        0x7f1203c9
    .end array-data

    :array_9
    .array-data 4
        0x7f1203c4
        0x7f1203c6
        0x7f1203c8
        0x7f1205aa
        0x7f1205ab
        0x7f1205ac
        0x7f1205ad
    .end array-data

    :array_a
    .array-data 4
        0x7f0801dc
        0x7f0801de
        0x7f0801e0
        0x7f0801db
        0x7f0801dd
        0x7f0801df
        0x7f0801e1
    .end array-data

    :array_b
    .array-data 4
        0x7f120378
        0x7f120375
        0x7f120376
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120377
        0x7f120375
        0x7f120375
        0x7f120376
    .end array-data

    :array_c
    .array-data 4
        0x7f080244
        0x7f080245
        0x7f080247
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080248
        0x7f080246
        0x7f080246
        0x7f080247
    .end array-data

    :array_d
    .array-data 4
        0x7f120389
        0x7f1203ac
        0x7f1203ad
        0x7f1203a7
        0x7f1203a9
        0x7f1203ab
        0x7f1203ae
        0x7f1203a8
        0x7f1203aa
    .end array-data

    :array_e
    .array-data 4
        0x7f120389
        0x7f12049c
        0x7f120496
        0x7f120493
        0x7f12048f
        0x7f12048a
        0x7f120487
        0x7f12049d
        0x7f120499
        0x7f120494
        0x7f120490
        0x7f12048b
        0x7f120488
        0x7f12049f
        0x7f12049b
        0x7f120497
        0x7f120492
        0x7f12048e
        0x7f120489
        0x7f120486
        0x7f12049e
        0x7f12049a
        0x7f120495
        0x7f120491
        0x7f12048d
        0x7f120485
        0x7f1204a0
        0x7f1204a2
        0x7f1204a3
        0x7f1204a4
        0x7f1204a5
        0x7f120483
        0x7f120484
        0x7f1204a1
    .end array-data

    :array_f
    .array-data 4
        0x7f1202ba
        0x7f1202bb
        0x7f1202bc
        0x7f1202bd
        0x7f1202be
        0x7f1202bf
        0x7f1202b9
    .end array-data
.end method
