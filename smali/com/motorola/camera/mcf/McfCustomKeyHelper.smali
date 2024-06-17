.class public abstract Lcom/motorola/camera/mcf/McfCustomKeyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

.field public static final MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

.field public static final SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final SYSTEM_JIIGAN_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

.field public static final mCaptureRequestCst:Ljava/lang/reflect/Constructor;

.field public static final mCaptureResultCst:Ljava/lang/reflect/Constructor;

.field public static final mCharacteristicsCst:Ljava/lang/reflect/Constructor;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "McfCustomKeyHelper"

    const-class v1, Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v2, v8, v4

    aput-object v1, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    :try_start_1
    const-string v7, "Unable to find CameraCharacteristics.Key"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    :goto_0
    sget-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    const-class v8, [I

    const-class v9, [B

    if-eqz v7, :cond_0

    const-string v7, "com.lenovo.moto.sensor.info.name"

    invoke-static {v2, v7}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v7, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dualcam_calib_meta_data_blob"

    invoke-static {v9, v7}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v7, "com.lenovo.moto.sensor.info.arcsoft_dual_calib_blob"

    invoke-static {v9, v7}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v7, "com.lenovo.moto.sensor.info.jigan_dual_calib_blob"

    invoke-static {v9, v7}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_JIIGAN_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v7, "com.mediatek.cshotfeature.availableCShotModes"

    invoke-static {v8, v7}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_0
    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_JIIGAN_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    :goto_1
    :try_start_2
    const-class v7, Landroid/hardware/camera2/CaptureResult$Key;

    new-array v10, v5, [Ljava/lang/Class;

    aput-object v2, v10, v4

    aput-object v1, v10, v3

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_1
    :try_start_3
    const-string v7, "Unable to find CaptureResult.Key"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    :goto_2
    sget-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    if-eqz v7, :cond_1

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v10, "com.lenovo.moto.envinfo.lux_idx"

    invoke-static {v7, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v10

    sput-object v10, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "com.lenovo.moto.envinfo.lux_std"

    invoke-static {v7, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v10

    sput-object v10, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "com.lenovo.moto.envinfo.iso100_gain"

    invoke-static {v7, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v10

    sput-object v10, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "com.lenovo.moto.envinfo.afd_submode"

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v10

    sput-object v10, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.bsgc_available"

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.blink_detected"

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.blink_degree"

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.smile_degree"

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.smile_confidence"

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.gaze_angle"

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.gaze_direction"

    invoke-static {v8, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.stats.gaze_degree"

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v10, "org.codeaurora.qcamera3.hal_private_data.reprocess_data_blob"

    invoke-static {v9, v10}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "com.lenovo.moto.frameinfo.sof_counter"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "com.lenovo.moto.frameinfo.pproc_done"

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "android.statistics.faceIds"

    invoke-static {v8, v9}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dac_info"

    invoke-static {v7, v9}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "com.lenovo.moto.adrc.gain"

    invoke-static {v7, v9}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_3

    :cond_1
    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :goto_3
    :try_start_4
    const-class v7, Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v2, v5, v4

    aput-object v1, v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sput-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    :try_start_5
    const-string v1, "Unable to find CaptureRequest.Key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    :goto_4
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    const-string v1, "com.mediatek.cshotfeature.capture"

    :try_start_6
    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-object v0, v6

    :goto_5
    sput-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v0, "com.lenovo.moto.clientapp.is_motcamera2"

    const-class v1, Ljava/lang/Byte;

    :try_start_7
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_7
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v6, v0

    goto :goto_6

    :cond_2
    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    :catch_4
    :goto_6
    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void

    :goto_7
    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    throw v0

    :goto_8
    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    throw v0

    :goto_9
    sput-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    throw v0
.end method

.method public static getCaptureResultKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCharacteristicKey(Ljava/lang/Class;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics$Key;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
