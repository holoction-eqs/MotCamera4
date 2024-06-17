.class public abstract Lcom/motorola/camera/camerax_extensions/JsonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getJsonClassName(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/io/Serializable;

    invoke-static {p2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getJsonClassName(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public static getJson(Landroid/content/Context;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Lcom/motorola/camera/shared/McfUtil;->readTuningMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    const-string p1, "no json"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p2, "UTF_8"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p0, Lorg/json/JSONTokener;

    invoke-direct {p0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    :cond_1
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-object v0
.end method

.method public static getJsonClassName(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1

    const-string v0, "c"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const-string p0, "b"

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    const-string p0, "B"

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string p0, "I"

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string p0, "L"

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    const-string p0, "F"

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    const-string p0, "D"

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_6
    instance-of v0, p0, [Z

    if-eqz v0, :cond_7

    const-string p0, "b["

    return-object p0

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_8

    const-string p0, "B["

    return-object p0

    :cond_8
    instance-of v0, p0, [I

    if-eqz v0, :cond_9

    const-string p0, "I["

    return-object p0

    :cond_9
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    const-string p0, "L["

    return-object p0

    :cond_a
    instance-of v0, p0, [F

    if-eqz v0, :cond_b

    const-string p0, "F["

    return-object p0

    :cond_b
    instance-of p0, p0, [D

    if-eqz p0, :cond_c

    const-string p0, "D["

    return-object p0

    :cond_c
    const-string p0, "U"

    return-object p0
.end method

.method public static getLimitedStreamSizeArray(IILandroid/hardware/camera2/CameraCharacteristics;)Lorg/json/JSONArray;
    .locals 12

    const-string v0, "characteristics"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v1

    const-string v2, "formats"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const-string v8, "supportedSizes"

    invoke-static {v6, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v6

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v6, v9

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-gt v11, p0, :cond_0

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-gt v11, p1, :cond_0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "sizes"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "format"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_2

    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    const-string v13, "rect"

    const/4 v14, -0x1

    invoke-static {v13, v12, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_1

    iget v13, v12, Landroid/graphics/Rect;->right:I

    iget v15, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    iget v14, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v14

    mul-int/2addr v9, v13

    sub-int/2addr v15, v8

    int-to-double v13, v15

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Lkotlin/ResultKt;->roundToInt(D)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->left:I

    iget v13, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v0

    int-to-double v13, v13

    mul-double/2addr v13, v6

    invoke-static {v13, v14}, Lkotlin/ResultKt;->roundToInt(D)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->top:I

    iget v13, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v8

    int-to-double v13, v13

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Lkotlin/ResultKt;->roundToInt(D)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->right:I

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v0

    int-to-double v13, v13

    mul-double/2addr v13, v6

    invoke-static {v13, v14}, Lkotlin/ResultKt;->roundToInt(D)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    iget v14, v12, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/graphics/Rect;->left:I

    if-lt v14, v15, :cond_1

    iget v14, v12, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    if-lt v14, v15, :cond_1

    iget v14, v12, Landroid/graphics/Rect;->right:I

    iget v15, v2, Landroid/graphics/Rect;->right:I

    if-gt v14, v15, :cond_1

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    if-le v13, v14, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13, v12}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_1
    check-cast v12, Landroid/graphics/Rect;

    if-eqz v12, :cond_1

    sget-object v13, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v13, -0x1

    add-int/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14, v12}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "list.values"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-object v1

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 4

    const-string v0, "Rect\\((\\d+), (\\d+) - (\\d+), (\\d+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(pattern)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "nativePattern.matcher(input)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/text/MatcherMatchResult;

    invoke-direct {v1, v0, p0}, Lkotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v0, v1}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v1, v2}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    check-cast v2, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {v2, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x4

    check-cast p0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {p0, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method
