.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v0, "HumanEffectAdapter"

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    if-eq v4, v2, :cond_1

    goto/16 :goto_7

    :cond_1
    if-ne v4, v2, :cond_5

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;

    invoke-direct {v6}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;-><init>()V

    const-string v7, "/vendor/etc/jiigan/jiigan_model.data"

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v8, v9, [B

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v9

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    goto :goto_1

    :cond_2
    move-object v7, v8

    :goto_0
    if-eqz v8, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v7

    move-object v9, v7

    move-object v7, v8

    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_3

    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    iput-object v7, v6, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v4, v6, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    :try_start_4
    invoke-virtual {v5, v6}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->initByConfig(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;)I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_4
    move-object v7, v8

    :goto_5
    if-eqz v7, :cond_4

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_6
    throw p0

    :cond_5
    :goto_7
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanVideoFusionParams:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    iput v0, v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v4, "bokeh_max_radius_factor"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bokeh_max_radius_factor:F

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v4, "light_factor"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->light_factor:F

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v4, "bg_light_factor"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->bg_light_factor:F

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v4, "max_light_threshold"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->max_light_threshold:F

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    const-string v4, "min_light_threshold"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->min_light_threshold:F

    invoke-virtual {v5, v1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setParams(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;

    invoke-virtual {v5, v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setFeatureType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;)I

    invoke-static {}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->getPreviewInstance()Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setLogLevel(I)I

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    :goto_8
    return-void

    :goto_9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_BLUR_RESULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    if-nez v0, :cond_6

    goto :goto_a

    :cond_6
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->release()I

    :cond_7
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
