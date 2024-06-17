.class public final Lcom/motorola/camera/IqConfigManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# static fields
.field public static final CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

.field public static final mCameraTypeSets:Ljava/util/HashSet;

.field public static mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

.field public static sInstance:Lcom/motorola/camera/IqConfigManager;


# instance fields
.field public final mAdvancedSceneOverrides:Ljava/util/HashMap;

.field public final mAutoSlowCapture:Ljava/util/HashMap;

.field public final mCaliValidations:Ljava/util/ArrayList;

.field public final mCameraTypeSceneOverrides:Ljava/util/HashMap;

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final mEnvironmentInfoMutex:Ljava/lang/Object;

.field public final mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mHasSceneOverrides:Z

.field public mLastExposureTime:F

.field public mLastIso:F

.field public mLastLux:F

.field public mLastLuxIdx:F

.field public mMfnrShutterDelayEnable:Z

.field public final mMtkMfnrSettings:Ljava/util/ArrayList;

.field public final mQcMfnrSettings:Ljava/util/HashMap;

.field public final mSceneOverrides:Ljava/util/HashMap;

.field public final mStaticExpScheduleHints:Ljava/util/ArrayList;

.field public final mTimeEstimates:Ljava/util/ArrayList;

.field public final mZslSettings:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    new-instance v0, Lcom/motorola/camera/IqConfigManager$1;

    invoke-direct {v0}, Lcom/motorola/camera/IqConfigManager$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    new-instance v1, Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-direct {v1}, Lcom/motorola/camera/LowLightExposureTableTracker;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    :goto_0
    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object p0

    return-object p0
.end method

.method public static getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    move v3, v4

    :cond_1
    const-string v2, "normal_overrides"

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const-string p0, "hdr_auto_on_nv_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    const-string p0, "hdr_auto_on"

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    const-string p0, "hdr_auto_off_nv_auto_on_flash_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    const-string p0, "hdr_auto_off_nv_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string p0, "hdr_auto_off"

    goto :goto_2

    :cond_8
    const-string p0, "hdr_on"

    :goto_2
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_a
    if-eqz v5, :cond_b

    :goto_3
    move-object p0, v5

    goto :goto_5

    :cond_b
    if-eqz v3, :cond_c

    if-eqz v1, :cond_c

    const-string p0, "hdr_off_nv_auto_on_flash_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v3, :cond_d

    const-string p0, "hdr_off_nv_auto_on"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_4
    goto :goto_1

    :cond_d
    const-string p0, "hdr_off"

    goto :goto_2

    :goto_5
    if-nez p0, :cond_e

    const-string v0, "hdr_default"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_e
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/IqConfigManager;
    .locals 6

    const-class v0, Lcom/motorola/camera/IqConfigManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    if-nez v1, :cond_1

    new-instance v1, Lcom/motorola/camera/IqConfigManager;

    invoke-direct {v1}, Lcom/motorola/camera/IqConfigManager;-><init>()V

    sput-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    invoke-static {}, Lcom/motorola/camera/settings/CameraType;->values()[Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    const-string v2, "default_cam_type"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/16 v6, 0x12

    const-string v7, "flash"

    const/4 v8, 0x6

    const-string v9, "super_portrait"

    const-string v10, "super_night"

    const-string v11, "cutout"

    const-string v12, "single_bokeh_with_nv"

    const-string v13, "ultra_resolution"

    const-string v14, "auto_ultra_resolution"

    const-string v15, "single_bokeh"

    const-string v5, "bokeh"

    const-string v2, "auto_super_night"

    if-nez v1, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "default_cam_type"

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object/from16 v1, v16

    :goto_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_7

    :cond_2
    move-object v7, v2

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_2

    :cond_4
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v7, v5

    goto/16 :goto_2

    :cond_5
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move-object v7, v15

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v7, v14

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v12, "ultra_resolution_hw_remosaic"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_1
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_3

    :cond_9
    move-object v7, v13

    goto/16 :goto_2

    :cond_a
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_7

    :cond_b
    move-object v7, v11

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v2, v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v3, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_7

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v2, v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, v3, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_7

    :cond_e
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v7, "filter_effect"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_2
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v5

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    :cond_10
    :goto_4
    const-string v2, "default_mode_with_raw_hdr"

    const-string v3, "default_mode"

    if-nez v5, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawHdrSupported()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_11
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v5

    :cond_12
    if-nez v5, :cond_14

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawHdrSupported()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    check-cast v1, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v5

    :cond_14
    if-nez v5, :cond_15

    goto :goto_7

    :cond_15
    iget-object v0, v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_7
    return-object v0

    :cond_16
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    if-nez v1, :cond_17

    return-object v0

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    :cond_18
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_19
    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_8
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_b

    :cond_1a
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_1b
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_1c
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_1d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v1

    const-string v2, "IqConfigManager"

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    :cond_1e
    if-nez v3, :cond_1f

    const-string v1, "no valid auto ultra resolution scene override"

    :goto_9
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1f
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_8

    :cond_20
    const/16 v1, 0x23

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    :cond_21
    if-nez v3, :cond_22

    const-string v1, "no valid ultra resolution scene override"

    goto :goto_9

    :cond_22
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_8

    :cond_23
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return-object v0

    :cond_24
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_8

    :cond_25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz v5, :cond_27

    iget-object v1, v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v1

    if-eqz v1, :cond_27

    return-object v0

    :cond_26
    const/4 v5, 0x0

    :cond_27
    if-nez v5, :cond_28

    goto :goto_a

    :cond_28
    move-object v1, v5

    goto :goto_b

    :cond_29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz v5, :cond_2b

    iget-object v1, v5, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_2b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvUnavailable()Z

    move-result v1

    if-eqz v1, :cond_2b

    return-object v0

    :cond_2a
    const/4 v5, 0x0

    :cond_2b
    if-nez v5, :cond_28

    :cond_2c
    :goto_a
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    :goto_b
    if-nez v1, :cond_2d

    return-object v0

    :cond_2d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->frontCameraSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0

    :cond_2e
    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0
.end method

.method public static getLuxStdForCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Float;
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    sget-object v2, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I
    .locals 1

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "flash"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    goto :goto_0

    :goto_2
    return-object p0
.end method

.method public static getSettingFromList(Ljava/util/List;FF)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    div-float/2addr v3, v1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getManualUwMappingUIZoomX(F)F

    move-result v3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    invoke-virtual {v1, v3, p1, p2}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->fitsParameters(FFF)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/IqConfigManager;->mLastIso:F

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(Ljava/util/List;FF)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    return-object p0
.end method

.method public static isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->scenes:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result p0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result p0

    const v2, 0x7fffffff

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    if-eqz p0, :cond_2

    iget v2, p0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;->estimate:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-byte p1, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    iget-boolean p0, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->mfnrBurstModeEnable:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/IqConfigManager;->mfnrProcessTimeEstimates(IZ)I

    move-result v2

    :cond_2
    :goto_0
    iget p0, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->timeThreshold:I

    if-lt v2, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isQcMfnrBurstEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_FPS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mfnrLowLightExposureHint()F
    .locals 5

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-virtual {v2}, Lcom/motorola/camera/LowLightExposureTableTracker;->supportsCharacteristicsExposureHints()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/LowLightExposureTableTracker;->getExpectedExposureTime()F

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/IqConfigManager;->mLastIso:F

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(Ljava/util/List;FF)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->codeOverride:Z

    if-nez v3, :cond_1

    iget v0, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->exposureTime:F

    monitor-exit v1

    return v0

    :cond_1
    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastExposureTime:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static mfnrProcessTimeEstimates(IZ)I
    .locals 6

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->mfnrLowLightExposureHint()F

    move-result v0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v2, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->maxPreviewExp:I

    iget v3, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crSlope:F

    float-to-double v3, v3

    iget v5, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crIntercept:F

    iget v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->defaultCRTime:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    const-wide v3, 0x3ff3851eb851eb85L    # 1.22

    const/high16 v5, 0x430d0000    # 141.0f

    const/16 v1, 0x12c

    :goto_0
    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    float-to-double v1, v0

    mul-double/2addr v1, v3

    float-to-double v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    :cond_1
    add-int/lit8 v2, p0, -0x1

    float-to-int v0, v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v1, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessStaticTime:I

    iget v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessPerFrameTime:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xfa

    const/16 v0, 0x6e

    :goto_1
    mul-int/2addr p0, v0

    add-int/2addr p0, v1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v2, p0

    :goto_2
    return v2
.end method

.method public static mfnrShutterThrottle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p0

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    iget-byte v1, v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    if-ne p0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    const-wide/16 p0, 0x0

    goto :goto_3

    :cond_4
    iget p0, v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->shuttleThrottleTime:I

    int-to-long p0, p0

    :goto_3
    return-wide p0
.end method

.method public static slurpJson(Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "mfnr_shutter_delay_enable"

    const-string v0, "scene_selection_overrides"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    const-string v5, "IqConfigManager"

    if-eqz v3, :cond_3

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-static {v12}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-static {v7}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    goto :goto_2

    :cond_1
    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v3, "Error parsing array of scene overrides: "

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    const-string v0, "scene_selection_advanced_overrides"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    goto :goto_6

    :cond_4
    move-object/from16 v17, v0

    invoke-virtual {v9, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    goto :goto_5

    :cond_5
    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :cond_6
    move-object/from16 v17, v0

    :goto_7
    move-object/from16 v0, v17

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v3, "No scene advanced overrides: "

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const-string v0, "qc_mfnr_settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    :try_start_2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "exposure_schedule_lowlight"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    :goto_9
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    invoke-direct {v12, v11}, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_8
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_9
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v3, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    goto :goto_8

    :cond_a
    iget-object v8, v3, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v4

    :goto_a
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_b

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    invoke-direct {v13, v12}, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_b
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    const-string v2, "Error parsing MFNR Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    const-string v0, "mtk_mfnr_settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :try_start_3
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    invoke-direct {v8, v7}, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    const-string v2, "Error parsing MTK MFNR Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_c
    const-string v0, "zsl_settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :try_start_4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    :goto_e
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_f

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    invoke-direct {v12, v11}, Lcom/motorola/camera/IqConfigManager$ZslSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_f
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    const-string v2, "Error parsing ZSL Setting array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    const-string v0, "auto_slow_capture"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :try_start_5
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    sget-object v8, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    :goto_10
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_11

    new-instance v11, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_11
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_f

    :catch_5
    move-exception v0

    const-string v2, "Error parsing auto slow capture array: "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    const-string v0, "time_estimates"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Error parsing Time Estimates Setting array: "

    if-eqz v2, :cond_14

    :try_start_6
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    :goto_11
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_13

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    invoke-direct {v9, v8}, Lcom/motorola/camera/IqConfigManager$TimeEstimates;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_13
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_12
    const-string v0, "cali_validation"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :try_start_7
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_15

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/IqConfigManager$CaliValidation;

    invoke-direct {v8, v7}, Lcom/motorola/camera/IqConfigManager$CaliValidation;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_15
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_14

    :catch_7
    move-exception v0

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_14
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/settings/CacheBehavior;->createFromJson(Lorg/json/JSONObject;)Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    return-void
.end method

.method public static slurpScenes(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    invoke-direct {v3, v2}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    iget-object v2, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p1, p0, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method
