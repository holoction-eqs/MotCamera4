.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public filterConfig:Lorg/json/JSONObject;

.field public gainTotal:D

.field public inputFrameCount:I

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->mSensorName:Ljava/lang/String;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public final buildRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 55

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONTokener;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const/4 v4, -0x1

    const-string v5, "results"

    invoke-static {v5, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    goto/16 :goto_1b

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/json/JSONObject;

    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v9, v8

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_38

    cmpg-double v9, v6, v11

    if-gez v9, :cond_2

    goto/16 :goto_1a

    :cond_2
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v6

    iget-object v7, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    new-instance v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    new-instance v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v9}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-static {v5, v3, v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v0, "unable to retrieve exposure values"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    iget-object v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v12, "filterConfig"

    if-eqz v11, :cond_37

    const-string v1, "sn-special-chromatix"

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    invoke-static {v1, v11, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v11, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v11}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getAntibandingStrategy(Lorg/json/JSONObject;)I

    move-result v5

    new-instance v14, Ljava/util/ArrayList;

    iget v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v15, :cond_36

    move-object/from16 p1, v12

    const-string v12, "input_frame_postprocess"

    invoke-static {v12, v15, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v12

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v15, :cond_35

    move-object/from16 v16, v2

    const-string v2, "max-exp-gain-cap"

    invoke-static {v2, v15, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v15, :cond_34

    move/from16 p2, v1

    const-string v1, "ISP-digital-gain-only"

    invoke-static {v1, v15, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v11, :cond_33

    const-string v15, "exp_suppress_ratio"

    invoke-static {v15, v11, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v11

    const-string v15, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v11, v15}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Double;

    move-object/from16 v17, v10

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_32

    move-object/from16 v19, v12

    const-string v12, "extreme_night_thres"

    invoke-static {v12, v3, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Double;

    move-object v12, v14

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_31

    move-object/from16 v20, v12

    const-string v12, "max_iso_cap"

    invoke-static {v12, v3, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    const-string v12, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_30

    move/from16 v21, v1

    const-string v1, "frame-ev-step"

    invoke-static {v1, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2f

    move/from16 v22, v2

    const-string v2, "lux_exp_threshold_range"

    invoke-static {v2, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2e

    move/from16 v23, v5

    const-string v5, "lux_exp_threshold_value"

    invoke-static {v5, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2d

    move-object/from16 v24, v9

    const-string v9, "lux_exp_threshold_value_normal"

    invoke-static {v9, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v25, v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-wide/from16 v26, v14

    const-string v14, "superNightBracket[i]"

    if-eq v12, v6, :cond_4

    const-string v0, "lux_exp_threshold_range not match to lux_exp_threshold_value"

    move-object/from16 v28, v14

    goto :goto_0

    :cond_4
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_2c

    const-string v12, "lux_iso_threshold_range"

    invoke-static {v12, v6, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2b

    const-string v15, "lux_iso_threshold_value"

    invoke-static {v15, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v15, :cond_2a

    move-object/from16 v28, v14

    const-string v14, "lux_iso_threshold_value_normal"

    invoke-static {v14, v15, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v14, v15, :cond_5

    const-string v0, "lux_iso_threshold_range not match to lux_iso_threshold_value"

    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    move/from16 p1, v7

    move-object/from16 v2, v20

    goto/16 :goto_15

    :cond_5
    iget v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v14, v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v29

    move-object/from16 v30, v4

    add-int/lit8 v4, v29, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-wide/from16 v31, v10

    const-string v10, "luxExpThresRange[luxExpThresRange.size - 1]"

    invoke-static {v4, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v4, v14, v10

    if-gtz v4, :cond_8

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_6

    neg-int v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "luxExpThresValue[-index - 1]"

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "luxExpThresValue[index]"

    :goto_1
    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    if-gez v2, :cond_7

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v9, "{\n                luxExp\u2026-index - 1]\n            }"

    goto :goto_2

    :cond_7
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v9, "{\n                luxExp\u2026rmal[index]\n            }"

    :goto_2
    invoke-static {v2, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    goto :goto_3

    :cond_8
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_3
    iget v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v14, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v11, "luxIsoThresRange[luxIsoThresRange.size - 1]"

    invoke-static {v2, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v33

    cmpg-double v2, v14, v33

    if-gtz v2, :cond_b

    iget v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_9

    neg-int v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v11, "luxIsoThresValue[-index - 1]"

    goto :goto_4

    :cond_9
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v11, "luxIsoThresValue[index]"

    :goto_4
    invoke-static {v6, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    if-gez v2, :cond_a

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v6, "{\n                luxIso\u2026-index - 1]\n            }"

    goto :goto_5

    :cond_a
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v6, "{\n                luxIso\u2026rmal[index]\n            }"

    :goto_5
    invoke-static {v2, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    goto :goto_6

    :cond_b
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    :goto_6
    move-wide/from16 v33, v13

    float-to-double v13, v7

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    mul-double v35, v35, v13

    move v2, v7

    iget-wide v6, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    mul-double/2addr v6, v13

    iget-wide v13, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->log(D)D

    move-result-wide v37

    sub-double v13, v13, v37

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-wide/from16 v37, v9

    int-to-double v9, v15

    const-wide/high16 v39, 0x4000000000000000L    # 2.0

    div-double v9, v9, v39

    div-double/2addr v13, v9

    int-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v41

    sub-double v9, v9, v41

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-wide/from16 v41, v13

    int-to-double v13, v15

    div-double v13, v13, v39

    div-double/2addr v9, v13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_22

    new-instance v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v15}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    move-wide/from16 v39, v9

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "evSteps[i]"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    move-object/from16 v29, v1

    move/from16 p1, v2

    move-wide/from16 v1, v31

    move/from16 v31, v13

    double-to-float v13, v1

    move-wide/from16 v43, v1

    move-wide/from16 v1, v26

    move-object/from16 v26, v15

    double-to-float v15, v1

    move-wide/from16 v45, v1

    int-to-float v1, v3

    move/from16 v27, v3

    iget-wide v2, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-wide/from16 v47, v2

    const/4 v2, 0x4

    if-ge v14, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_d

    move-wide/from16 v49, v41

    goto :goto_9

    :cond_d
    move-wide/from16 v49, v39

    :goto_9
    if-eqz v2, :cond_e

    move-wide/from16 v2, v35

    goto :goto_a

    :cond_e
    move-wide v2, v6

    :goto_a
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v49, v49, v9

    add-double v49, v49, v2

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sget-object v9, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    cmpg-float v9, v9, v15

    if-gtz v9, :cond_10

    const/4 v9, 0x3

    if-le v14, v9, :cond_f

    iget-wide v9, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v9, v4

    mul-double/2addr v2, v11

    const/4 v13, 0x3

    move-wide/from16 v53, v2

    move-wide v2, v9

    move-wide/from16 v9, v53

    goto :goto_b

    :cond_f
    move v13, v9

    move-wide v9, v2

    move-wide/from16 v2, v47

    :goto_b
    if-ne v14, v13, :cond_12

    iget-wide v2, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double v2, v2, v37

    mul-double v9, v6, v33

    goto :goto_c

    :cond_10
    const/4 v9, 0x3

    if-ge v14, v9, :cond_11

    iget-wide v9, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-wide/from16 v49, v2

    float-to-double v2, v13

    div-double/2addr v9, v2

    move-wide/from16 v2, v49

    goto :goto_d

    :cond_11
    move-wide/from16 v49, v2

    move-wide/from16 v2, v47

    move-wide/from16 v9, v49

    :cond_12
    :goto_c
    move-wide/from16 v53, v2

    move-wide v2, v9

    move-wide/from16 v9, v53

    :goto_d
    const-wide v47, 0x41c1e1a300000000L    # 6.0E8

    cmpl-double v13, v9, v47

    if-lez v13, :cond_13

    move/from16 v13, v25

    move-wide/from16 v9, v47

    move-wide/from16 v47, v4

    goto :goto_e

    :cond_13
    move-wide/from16 v47, v4

    move/from16 v13, v25

    :goto_e
    float-to-double v4, v13

    mul-double/2addr v2, v4

    mul-double v4, v9, v2

    move-object/from16 v15, v24

    move-wide/from16 v24, v6

    iget-wide v6, v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-object/from16 v32, v8

    move-wide/from16 v49, v9

    iget-wide v8, v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v6, v8

    cmpl-double v8, v2, v6

    if-lez v8, :cond_14

    div-double v9, v4, v6

    move-wide v2, v6

    goto :goto_f

    :cond_14
    move-wide/from16 v9, v49

    :goto_f
    const/4 v8, 0x1

    move/from16 v0, v23

    if-eq v0, v8, :cond_18

    const/4 v8, 0x2

    if-ne v0, v8, :cond_15

    const-wide v49, 0x416312d000000000L    # 1.0E7

    goto :goto_10

    :cond_15
    const-wide v49, 0x415fca0555555555L    # 8333333.333333333

    :goto_10
    cmpl-double v8, v9, v49

    if-lez v8, :cond_18

    div-double v9, v9, v49

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double v2, v2, v49

    const-wide v8, 0x40b3880000000000L    # 5000.0

    sub-double v51, v2, v8

    cmpl-double v10, v51, v4

    if-lez v10, :cond_16

    sub-double v2, v2, v49

    goto :goto_11

    :cond_16
    add-double/2addr v8, v2

    mul-double/2addr v8, v6

    cmpg-double v8, v8, v4

    if-gez v8, :cond_17

    add-double v2, v2, v49

    :cond_17
    :goto_11
    move-wide v9, v2

    div-double v2, v4, v9

    :cond_18
    move-wide/from16 v49, v11

    iget-wide v11, v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v8, v2, v11

    if-lez v8, :cond_20

    if-eqz v22, :cond_1b

    iget-wide v4, v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v6, v9, v4

    if-lez v6, :cond_1a

    mul-double/2addr v2, v9

    div-double/2addr v2, v4

    float-to-double v6, v1

    cmpl-double v1, v2, v6

    if-lez v1, :cond_19

    move-wide v2, v6

    :cond_19
    div-double/2addr v2, v11

    goto :goto_12

    :cond_1a
    float-to-double v6, v1

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1c

    mul-double/2addr v9, v2

    div-double/2addr v9, v6

    div-double v2, v6, v11

    cmpl-double v1, v9, v4

    if-lez v1, :cond_1e

    goto :goto_12

    :cond_1b
    cmpg-double v1, v2, v6

    if-gtz v1, :cond_1d

    :cond_1c
    div-double/2addr v2, v11

    goto :goto_13

    :cond_1d
    iget-wide v2, v15, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v6, v11, v2

    div-double/2addr v4, v6

    :goto_12
    move-wide v9, v4

    :cond_1e
    :goto_13
    if-eqz v21, :cond_1f

    mul-double/2addr v11, v2

    :cond_1f
    move-wide v4, v2

    move-wide v2, v11

    goto :goto_14

    :cond_20
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_14
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_21

    move-wide v2, v6

    :cond_21
    move-object/from16 v1, v26

    iput-wide v2, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iput-wide v4, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    iput-wide v9, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v23, v0

    move-wide/from16 v6, v24

    move/from16 v3, v27

    move-object/from16 v1, v29

    move-object/from16 v8, v32

    move-wide/from16 v9, v39

    move-wide/from16 v26, v45

    move-wide/from16 v4, v47

    move-wide/from16 v11, v49

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v25, v13

    move-object/from16 v24, v15

    move/from16 v13, v31

    move-wide/from16 v31, v43

    goto/16 :goto_7

    :cond_22
    move/from16 p1, v2

    move-object/from16 v2, v20

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "no EV compensation configured"

    move-object/from16 v3, v30

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    const/4 v0, 0x0

    move-object/from16 v5, v28

    goto :goto_17

    :cond_23
    move-object/from16 v3, v30

    const/4 v0, 0x0

    :goto_16
    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v28

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_24
    move-object/from16 v5, v28

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, 0x1

    :goto_17
    if-nez v0, :cond_25

    const-string v0, "dynamic exposure algo error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_25
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_29

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move/from16 v7, p1

    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v19

    invoke-static {v8, v6}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "NOISE_REDUCTION_MODE"

    const-string v10, "EDGE_MODE"

    if-eqz v6, :cond_26

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v11, 0x2

    invoke-static {v6, v10, v11, v4, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v9, v11, v4, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    goto :goto_19

    :cond_26
    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v11, 0x3

    invoke-static {v6, v10, v11, v4, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x4

    invoke-static {v6, v9, v10, v4, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    :goto_19
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "CONTROL_AWB_LOCK"

    invoke-static {v6, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v6, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    move-object/from16 v6, v18

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    if-eqz v17, :cond_27

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v9, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_27
    if-eqz p2, :cond_28

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "CONTROL_MODE"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11, v4, v9}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "CONTROL_SCENE_MODE"

    const/16 v11, 0x66

    invoke-static {v9, v10, v11, v4, v9}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    :cond_28
    sget-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v10, "ISMOTCAMERA_KEY"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v9, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v18, v6

    move/from16 p1, v7

    move-object/from16 v19, v8

    goto/16 :goto_18

    :cond_29
    const-string v1, "requests"

    move-object/from16 v2, v16

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2b
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_31
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_32
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_34
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_35
    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object/from16 p1, v12

    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object/from16 p1, v12

    invoke-static/range {p1 .. p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_1a
    move-object v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lux ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") or gain ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ") calculation failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_39
    :goto_1b
    move-object v3, v4

    const-string v0, "Unable to parse input result"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string p1, "configureStream client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean v7, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:L_COROUTINE/ArtificialStackFrames;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, L_COROUTINE/ArtificialStackFrames;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v6

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    const/4 v3, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/dynamite/zzo;->configureCaptureStreamNative$default(JLandroid/graphics/Point;ILandroid/view/Surface;IZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final deinitialize(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    return-void
.end method

.method public final getExtensionConfig()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "previewResultCount"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "captureRequestCount"

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    sget-object v4, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3, v4, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AE_MODE"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5, v3, p0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AWB_MODE"

    invoke-static {p0, v4, v5, v3, p0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object p0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "ISMOTCAMERA_KEY"

    invoke-static {p0, v4, v5, v3, p0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AF_MODE"

    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "requests"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "previewCaptureRequests"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "SENSOR_EXPOSURE_TIME"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "SENSOR_FRAME_DURATION"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "SENSOR_SENSITIVITY"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "CONTROL_AE_ANTIBANDING_MODE"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "STATISTICS_SCENE_FLICKER"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "ANTIBANDING_SUBMODE_KEY"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v2, "ISO100_GAIN_KEY"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "LUX_STD_KEY"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "LUX_IDX_KEY"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "MOT_ADRC_GAIN_KEY"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "LENS_APERTURE"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v1, "previewResultsOfInterest"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json.toString()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initialize(I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->deinitialize(I)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    const-string p1, "as-supernight"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final isSupported()Z
    .locals 8

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, -0x1

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lake"

    invoke-static {v4, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    return v2

    :cond_2
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    const-string v3, "AR-supernight"

    iget-object v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v3, v5, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_8

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v6, "enable"

    invoke-static {v6, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v6, :cond_7

    const-string v7, "extension-enable"

    invoke-static {v7, v6, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v7}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "state-machine"

    invoke-static {v3, v5, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "super-night"

    invoke-static {v5, v3, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v3, "frames-required"

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "Unable to determine input frames"

    goto :goto_2

    :cond_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    return v4

    :cond_5
    const-string p0, "SM config missing for algo"

    goto :goto_2

    :cond_6
    :goto_1
    return v2

    :cond_7
    const-string p0, "algoConfig"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    const-string p0, "Config missing for algo"

    :goto_2
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final processStream(ILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p0, "processStream client id is invalid"

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 p2, -0x1

    const-string v3, "results"

    invoke-static {v3, p1, p2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_2

    const-string p0, "Unable to parse input results"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    if-eq p2, v3, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input count("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not matching requested count "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "luxAvg"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "totalGain"

    iget-wide v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    const/4 v3, 0x0

    const-string v4, "algoConfig"

    if-eqz v2, :cond_b

    const-string v5, "brightness"

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "curveBrightness"

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_a

    const-string v5, "contrast"

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "curveContrast"

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_9

    const-string v5, "sharpness"

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    const-string v5, "deviceID"

    invoke-static {v5, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    const-string v4, "lib-name"

    invoke-static {v4, v2, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "libName"

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    const-string v2, "cameraID"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v2, "filterConfig"

    if-eqz v1, :cond_6

    const-string v4, "frame-ev-default"

    invoke-static {v4, v1, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "frameEv"

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    const-string v2, "ram_memory_size"

    invoke-static {v2, v1, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "memorySize"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    iget-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "json.toString()"

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {v2, v3, p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v4}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v4}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v4}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v4}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v4}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
