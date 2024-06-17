.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public evSteps:Ljava/util/ArrayList;

.field public filterConfig:Lorg/json/JSONObject;

.field public gainTotal:D

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;

.field public maxInputFrameCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->mSensorName:Ljava/lang/String;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public final buildRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 33

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

    const-string v4, "results"

    const/4 v5, -0x1

    invoke-static {v4, v3, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    goto/16 :goto_17

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lorg/json/JSONObject;

    iget-object v7, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    float-to-double v10, v9

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_2b

    cmpg-double v10, v7, v12

    if-gez v10, :cond_2

    goto/16 :goto_16

    :cond_2
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v7

    iget-object v8, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    new-instance v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v9}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    new-instance v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v10}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-static {v6, v3, v7, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v0, "unable to retrieve exposure values"

    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    iget-object v11, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v12, "filterConfig"

    if-eqz v11, :cond_2a

    const-string v1, "sp-special-chromatix"

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    invoke-static {v1, v11, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v11, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v11}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getAntibandingStrategy(Lorg/json/JSONObject;)I

    move-result v6

    new-instance v14, Ljava/util/ArrayList;

    iget v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v15, :cond_29

    const-string v5, "input_frame_postprocess"

    invoke-static {v5, v15, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    iget-object v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    move-object/from16 p2, v12

    if-eqz v15, :cond_28

    const-string v12, "params-dynamic"

    move-object/from16 v16, v2

    const/4 v2, -0x1

    invoke-static {v12, v15, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lorg/json/JSONArray;

    if-nez v2, :cond_5

    const-string v0, "dynamic params not found"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 p1, v1

    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v17, v7

    move/from16 v23, v8

    move-object v2, v14

    goto/16 :goto_12

    :cond_5
    const/4 v12, 0x0

    iput-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move/from16 p1, v1

    move/from16 v1, v17

    move-object/from16 v17, v7

    :goto_2
    const-string v7, "frame-ev-step"

    if-ge v15, v12, :cond_9

    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v12

    move-object/from16 v12, v20

    check-cast v12, Lorg/json/JSONObject;

    move-object/from16 v20, v3

    const-string v3, "lux-in"

    invoke-static {v3, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    move-object/from16 v22, v5

    const-string v5, "lux-out"

    invoke-static {v5, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    move/from16 v23, v8

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    move-object/from16 v24, v9

    float-to-double v8, v8

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    cmpg-double v8, v8, v25

    if-gez v8, :cond_7

    iget v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    float-to-double v8, v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    cmpl-double v5, v8, v25

    if-ltz v5, :cond_7

    invoke-static {v7, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_3

    :cond_6
    move/from16 v23, v8

    move-object/from16 v24, v9

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v5, v7, v18

    if-lez v5, :cond_8

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-wide/from16 v18, v7

    move v1, v15

    :cond_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v20

    move/from16 v12, v21

    move-object/from16 v5, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    goto :goto_2

    :cond_9
    move-object/from16 v20, v3

    move-object/from16 v22, v5

    move/from16 v23, v8

    move-object/from16 v24, v9

    :goto_3
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v7, v1, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    :cond_a
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_27

    const-string v2, "ISP-digital-gain-only"

    invoke-static {v2, v1, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_26

    const-string v3, "exp-curve-anchors"

    invoke-static {v3, v2, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "gains"

    const/4 v5, -0x1

    invoke-static {v3, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v3

    const-string v7, "exposures"

    invoke-static {v7, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v5, v7, :cond_b

    const-string v0, "exp-curve-anchors list sizes don\'t match"

    move-object v2, v14

    goto/16 :goto_11

    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_c

    new-instance v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "gainList[i]"

    invoke-static {v11, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "expList[i]"

    invoke-static {v13, v15}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Number;

    move-object v15, v2

    move-object/from16 p2, v3

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v9, v11, v12, v2, v3}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>(DD)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p2

    move-object v2, v15

    goto :goto_4

    :cond_c
    iget-object v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_1f

    new-instance v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v7}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "it[i]"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    move-object/from16 v11, v24

    iget-wide v12, v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move/from16 p0, v2

    move v15, v3

    iget-wide v2, v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v12, v2

    iget-wide v2, v11, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v12, v2

    mul-double/2addr v12, v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v8, 0x0

    cmpg-double v3, v12, v8

    if-gtz v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v8, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v18, v8

    iget-wide v8, v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move/from16 v21, v6

    move-object/from16 v28, v7

    move/from16 p2, v15

    move-wide/from16 v26, v18

    move-object/from16 v19, v0

    move-object/from16 v18, v14

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v8, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v24, v8

    iget-wide v8, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const/4 v0, 0x0

    const/16 v18, 0x1

    move-wide/from16 v26, v24

    move-wide/from16 v24, v8

    move/from16 v8, v18

    :goto_6
    if-nez v0, :cond_11

    if-ge v8, v2, :cond_11

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-object/from16 v18, v14

    move/from16 p2, v15

    iget-wide v14, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move/from16 v21, v6

    move-object/from16 v28, v7

    iget-wide v6, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v14, v6

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_10

    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v14, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    sub-double/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v14, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v0, v6, v14

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_f

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v14, v12, v6

    move-wide/from16 v24, v14

    move-wide v14, v6

    goto :goto_8

    :cond_f
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    div-double v14, v12, v6

    move-wide/from16 v24, v6

    :goto_8
    const/4 v0, 0x1

    move-wide/from16 v26, v14

    :cond_10
    add-int/lit8 v8, v8, 0x1

    move/from16 v15, p2

    move-object/from16 v14, v18

    move/from16 v6, v21

    move-object/from16 v7, v28

    goto :goto_6

    :cond_11
    move/from16 v21, v6

    move-object/from16 v28, v7

    move-object/from16 v18, v14

    move/from16 p2, v15

    if-nez v0, :cond_12

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v8, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v6, v12, v8

    move-wide/from16 v26, v8

    move-wide v8, v6

    goto :goto_9

    :cond_12
    move-wide/from16 v8, v24

    :goto_9
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iget-wide v14, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-wide/from16 v24, v8

    iget-wide v8, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v14, v8

    cmpl-double v0, v6, v14

    if-lez v0, :cond_13

    move-wide v6, v14

    :cond_13
    cmpl-double v0, v26, v14

    if-lez v0, :cond_14

    div-double v8, v12, v14

    move-wide/from16 v26, v14

    goto :goto_a

    :cond_14
    move-wide/from16 v8, v24

    :goto_a
    const/4 v0, 0x1

    move/from16 v3, v21

    if-eq v3, v0, :cond_18

    const/4 v0, 0x2

    if-ne v3, v0, :cond_15

    const-wide v24, 0x416312d000000000L    # 1.0E7

    goto :goto_b

    :cond_15
    const-wide v24, 0x415fca0555555555L    # 8333333.333333333

    :goto_b
    cmpl-double v0, v8, v24

    if-lez v0, :cond_18

    div-double v8, v8, v24

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    mul-double v8, v8, v24

    const-wide v26, 0x40b3880000000000L    # 5000.0

    sub-double v29, v8, v26

    cmpl-double v0, v29, v12

    if-lez v0, :cond_16

    sub-double v8, v8, v24

    goto :goto_c

    :cond_16
    add-double v26, v8, v26

    mul-double v26, v26, v6

    cmpg-double v0, v26, v12

    if-gez v0, :cond_17

    add-double v8, v8, v24

    :cond_17
    :goto_c
    div-double v26, v12, v8

    :cond_18
    iget-wide v6, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v0, v26, v6

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_1b

    cmpg-double v0, v26, v14

    if-gtz v0, :cond_19

    div-double v26, v26, v6

    goto :goto_d

    :cond_19
    iget-wide v8, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v14, v6, v8

    div-double/2addr v12, v14

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    move-wide/from16 v26, v8

    move-wide v8, v12

    :goto_d
    if-eqz v1, :cond_1a

    mul-double v6, v6, v26

    :cond_1a
    move-wide/from16 v31, v6

    move-wide/from16 v6, v26

    move-wide/from16 v26, v31

    goto :goto_e

    :cond_1b
    move-wide/from16 v6, v24

    :goto_e
    cmpg-double v0, v26, v24

    if-gez v0, :cond_1c

    goto :goto_f

    :cond_1c
    move-wide/from16 v24, v26

    :goto_f
    iget-wide v12, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v0, v8, v12

    if-lez v0, :cond_1e

    mul-double v24, v24, v8

    div-double v24, v24, v12

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v8, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v0, v24, v8

    if-lez v0, :cond_1d

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    iget-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iget-wide v8, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v8, v6, v8

    move-object/from16 v0, v28

    goto :goto_10

    :cond_1d
    move-wide v8, v12

    :cond_1e
    move-wide v12, v8

    move-object/from16 v0, v28

    move-wide v8, v6

    move-wide/from16 v6, v24

    :goto_10
    iput-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    iput-wide v8, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    iput-wide v12, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-object/from16 v2, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, 0x1

    move-object v14, v2

    move v6, v3

    move-object/from16 v24, v11

    move/from16 v2, p0

    move v3, v0

    move-object/from16 v0, v19

    goto/16 :goto_5

    :cond_1f
    move-object v2, v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "no EV compensation configured"

    :goto_11
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const/4 v0, 0x0

    goto :goto_13

    :cond_20
    const/4 v0, 0x1

    :goto_13
    if-nez v0, :cond_21

    const-string v0, "dynamic exposure algo error"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_21
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_25

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "superPortraitBracket[i]"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move/from16 v6, v23

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v7, v22

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "NOISE_REDUCTION_MODE"

    const-string v9, "EDGE_MODE"

    if-eqz v5, :cond_22

    sget-object v5, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x2

    invoke-static {v5, v9, v10, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_15

    :cond_22
    sget-object v5, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x3

    invoke-static {v5, v9, v10, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_15
    invoke-static {v4, v5, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v8, "CONTROL_AWB_LOCK"

    invoke-static {v5, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    move-object/from16 v5, v20

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    if-eqz v17, :cond_23

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    :cond_23
    if-eqz p1, :cond_24

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "CONTROL_MODE"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10, v4, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "CONTROL_SCENE_MODE"

    const/16 v10, 0x67

    invoke-static {v8, v9, v10, v4, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v9, "ISMOTCAMERA_KEY"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v4, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    :cond_24
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v20, v5

    move/from16 v23, v6

    move-object/from16 v22, v7

    goto/16 :goto_14

    :cond_25
    const-string v1, "requests"

    move-object/from16 v2, v16

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-static/range {p2 .. p2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_27
    const/4 v0, 0x0

    invoke-static/range {p2 .. p2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v0, 0x0

    invoke-static/range {p2 .. p2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object/from16 p2, v12

    const/4 v0, 0x0

    invoke-static/range {p2 .. p2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-object/from16 p2, v12

    invoke-static/range {p2 .. p2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2b
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lux ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") or gain ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ") calculation failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_2c
    :goto_17
    const-string v0, "Unable to parse input result"

    goto/16 :goto_0
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string p1, "configureStream client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean v7, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:L_COROUTINE/ArtificialStackFrames;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, L_COROUTINE/ArtificialStackFrames;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v6

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

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
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    return-void
.end method

.method public final getExtensionConfig()Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "previewResultCount"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "captureRequestCount"

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

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

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AF_MODE"

    const/4 v6, 0x4

    invoke-static {p0, v4, v6, v3, p0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    sget-object p0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "ISMOTCAMERA_KEY"

    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->deinitialize(I)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    const-string p1, "as-superportrait"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final isSupported()Z
    .locals 7

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, -0x1

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    const-string v3, "AR-superportrait"

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v3, v4, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v5, "enable"

    invoke-static {v5, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v5, :cond_5

    const-string v6, "extension-enable"

    invoke-static {v6, v5, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v6}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "state-machine"

    invoke-static {v3, v4, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "super-portrait"

    invoke-static {v4, v3, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v3, "frames-required"

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "Unable to determine input frames"

    goto :goto_1

    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    const/4 p0, 0x1

    return p0

    :cond_3
    const-string p0, "SM config missing for algo"

    goto :goto_1

    :cond_4
    :goto_0
    return v2

    :cond_5
    const-string p0, "algoConfig"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_6
    const-string p0, "Config missing for algo"

    :goto_1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final processStream(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

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

    const-string p2, "results"

    const/4 v2, -0x1

    invoke-static {p2, p1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_2

    const-string p0, "Unable to parse input results"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_3
    const/4 v3, 0x0

    if-eq p2, v2, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input count("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not matching requested count "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "totalGain"

    iget-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    invoke-virtual {p2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v2, "algoConfig"

    if-eqz v1, :cond_9

    const-string v4, "brightness"

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    invoke-static {v4, v1, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "curveBrightness"

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    const-string v4, "contrast"

    invoke-static {v4, v1, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "curveContrast"

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    const-string v4, "sharpness"

    invoke-static {v4, v1, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    const-string v2, "deviceID"

    invoke-static {v2, v1, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "luxAvg"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "frameEv"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    iget-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "json.toString()"

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {v2, v3, p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

    :cond_6
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
