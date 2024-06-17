.class public final Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$ContentAiProviderListener;


# instance fields
.field public mIsCameraInit:Z

.field public final mIsCliDisplay:Z

.field public mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

.field public final mSettingsListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final mShowMlResults:Lcom/google/common/base/Splitter$1;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    new-instance v0, Lcom/google/common/base/Splitter$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/Splitter$1$$ExternalSynthetic$IA0;)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/google/common/base/Splitter$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    new-instance v0, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_CAMERA_OPEN:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_TEARDOWN:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final handleGestureAutoCapture()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v1, "McfMlSettingManager"

    if-nez v0, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    iget-boolean v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v5}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    move v4, v3

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    const-string p0, "Mcf is not GestureMV1 capable"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p0, "GESTURE_AUTO_CAPTURE does not have any resources"

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v1}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v1

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0, v3, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    :goto_3
    return-void
.end method

.method public final handleSceneDetection()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v0, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-eqz v1, :cond_3

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez v4, :cond_4

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1, v2, v0}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_4
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    new-array v1, v2, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION_V2:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    if-eqz v0, :cond_5

    aput-object v0, v1, v3

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    aput-object v6, v1, v3

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    aput-object v4, v1, v3

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    aput-object v2, v1, v3

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_4

    :cond_8
    const-string p0, "SCENE_DETECTION does not have any resources"

    :goto_3
    const-string v0, "McfMlSettingManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :goto_4
    return-void
.end method

.method public final handleSmileDetection()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v0, :cond_0

    const-string p0, "McfMlSettingManager"

    const-string v0, "mMcfMlStateMachine is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionEnabledOnMcfConfig(Z)Z

    move-result v4

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->ML_MODEL_SMILE_DETECTION_DSP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v4, v0

    if-ge v4, v1, :cond_3

    goto :goto_1

    :cond_3
    aget v0, v0, v2

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_3

    :cond_4
    :goto_1
    const-string v0, "SettingsHelper"

    const-string v4, "Smile DSP modes is null or empty"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    :goto_4
    if-nez v3, :cond_a

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)I

    move-result v3

    new-instance v4, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v4}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    iput-object v0, v4, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v6, 0x7f1200ed

    iput v6, v4, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v7, 0x3

    if-eq v6, v7, :cond_9

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error - modelState: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in checkModelStateUpdateForMotSmileDetect was not associated to any of the available switch cases."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ModelUpdateDialogHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const v2, 0x7f120134

    iput v2, v4, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v2, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v2, v4, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v2, 0x7f12014e

    iput v2, v4, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance v2, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v2, v4, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v2, 0x7f12012d

    iput v2, v4, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_a
    :goto_5
    move v1, v2

    :goto_6
    if-nez v1, :cond_c

    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v0}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v5, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_7

    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_c
    :goto_7
    return-void
.end method

.method public final onAllModelsLoaded()V
    .locals 10

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfiePreviewEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v2}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v3, "mMcfMlStateMachine is null"

    const-string v4, "McfMlSettingManager"

    if-nez v2, :cond_2

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCudPreviewSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v2, v6, :cond_4

    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v2, v6, :cond_5

    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

    :cond_5
    :goto_2
    iget-object v2, v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v2}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v2

    iget-object v5, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v6, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v5, v6, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleGestureAutoCapture()V

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSceneDetection()V

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSmileDetection()V

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v2}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v2

    iget-object v5, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v6, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v5, v6, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v5

    iget-boolean v6, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-eqz v5, :cond_c

    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez v6, :cond_9

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v5, v0, v7}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v7, v0, v8}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_9
    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v7, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_a
    invoke-static {v5}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v2, "DOC_SCAN does not have any resources"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v2}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v2

    iget-object v5, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v7, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v5, v7, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_11

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez v6, :cond_d

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v2, v0, v7}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_d
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v7, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v1, "SLIDE_SCAN does not have any resources"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v7, v2, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    sget-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v8, v7, v5

    const/4 v8, 0x2

    if-lt v2, v8, :cond_10

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v7, v0

    :cond_10
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v1, v2, v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_5

    :cond_11
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :goto_5
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v1, :cond_12

    move-object v1, v3

    goto :goto_9

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMotAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v0

    goto :goto_6

    :cond_13
    move v1, v5

    :goto_6
    if-eqz v1, :cond_14

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v0

    goto :goto_7

    :cond_14
    move v1, v5

    :goto_7
    if-eqz v1, :cond_18

    if-nez v6, :cond_15

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdateForAiLowLightSelfie(Landroid/content/Context;Z)Z

    move-result v1

    goto :goto_8

    :cond_15
    move v1, v5

    :goto_8
    if-eqz v1, :cond_16

    const-string v1, "Content Update required, skipping Low Light AI Model loading"

    :goto_9
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_16
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v1}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v7, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v7, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_a

    :cond_17
    const-string v1, "Could not retrieve Mot Low Light Selfie Ml Model"

    goto :goto_9

    :cond_18
    :goto_a
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v1, :cond_19

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    move v1, v0

    goto :goto_b

    :cond_1a
    move v1, v5

    :goto_b
    if-eqz v1, :cond_1b

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_c

    :cond_1b
    move v1, v5

    :goto_c
    if-eqz v1, :cond_1e

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez v6, :cond_1c

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1, v0, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_1c
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v1}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v7, Lcom/motorola/camera/shared/ai/model/McfMlModel;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v7, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_d

    :cond_1d
    const-string v1, "Could not retrieve Mot Image Stabilization Ml Model"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_d
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v1, :cond_1f

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_1f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCudSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez v6, :cond_24

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-nez v2, :cond_24

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isCudSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v8

    if-nez v8, :cond_24

    if-eqz v6, :cond_24

    invoke-static {v2, v7}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->isNotSupportedIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto/16 :goto_e

    :cond_20
    new-instance v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v6}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    iput-object v1, v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v8, 0x7f1200ed

    iput v8, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v8, 0x7f120131

    iput v8, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v8

    if-eqz v8, :cond_23

    const/4 v9, 0x3

    if-eq v8, v9, :cond_24

    const/4 v9, 0x4

    if-eq v8, v9, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error - modelState: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in checkModelStateUpdateForCud was not associated to any of the available switch cases."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ModelUpdateDialogHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_21
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_f

    :cond_22
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;

    const/4 v5, 0x7

    invoke-direct {v3, v7, v2, v5}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    iput-object v3, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v2, 0x7f12014e

    iput v2, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance v2, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v2, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v2, 0x7f12012d

    iput v2, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v6}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_f

    :cond_23
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_24
    :goto_e
    move v0, v5

    :goto_f
    if-eqz v0, :cond_25

    const-string v0, "Content Update required, skipping CUD loading"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters;->setModelAlgorithmMode()V

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_10
    monitor-exit p0

    goto :goto_11

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    filled-new-array {v0}, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_11

    :cond_26
    const-string v0, "Could not retrieve Mot CUD Ml Model"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters;->setModelAlgorithmMode()V

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_10

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    :goto_11
    return-void
.end method

.method public final onModelLoaded()V
    .locals 0

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/google/common/base/Splitter$1;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    const-string v3, "McfMlSettingManager"

    if-nez v0, :cond_1

    const-string p0, "getUseCase returned null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Mcf not supported by current mode:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->bgServiceModels:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->listener:Ljava/lang/ref/WeakReference;

    sget-boolean v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->onAllModelsLoaded()V

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :goto_1
    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v2, p0, p1}, Lcom/google/common/base/Splitter$1;->registerMcfMlStateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_6
    return-void
.end method
