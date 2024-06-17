.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfigCapture:Lorg/json/JSONObject;

.field public algoConfigPreview:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public jniClientIdCapture:J

.field public jniClientIdPreview:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public largestFace:Landroid/graphics/Rect;

.field public final mSensorName:Ljava/lang/String;

.field public final maxInputFrameCount:I

.field public final previewSize:Landroid/graphics/Point;

.field public final prvsLuxVals:Ljava/util/LinkedList;

.field public size:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->mSensorName:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->previewSize:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->prvsLuxVals:Ljava/util/LinkedList;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final buildRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [I

    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "EDGE_MODE"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v3, "NOISE_REDUCTION_MODE"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "requests"

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 9

    invoke-virtual {p0, p2}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getJniClient(I)J

    move-result-wide v0

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string p1, "client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->previewSize:Landroid/graphics/Point;

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    move v5, p2

    move v6, v2

    goto :goto_0

    :cond_2
    move v5, v2

    move v6, v5

    :goto_0
    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:L_COROUTINE/ArtificialStackFrames;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v2}, L_COROUTINE/ArtificialStackFrames;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v7

    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    sget-boolean v8, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->configureCaptureStreamNative(JLandroid/graphics/Point;ILandroid/view/Surface;IZIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final deinitialize(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getJniClient(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    :goto_0
    return-void
.end method

.method public final getExtensionConfig()Ljava/lang/String;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "previewResultCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "previewProcessorType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, [I

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget-object v6, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "requests"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "previewCaptureRequests"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "LUX_STD_KEY"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "LUX_IDX_KEY"

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "STATISTICS_FACES"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Face["

    invoke-static {v1, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v6, "SCALER_CROP_REGION"

    invoke-static {v2, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Rect"

    invoke-static {v1, v2, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v2, "previewResultsOfInterest"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string v2, "captureResultsOfInterest"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "captureRequestCount"

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    const-string v2, "resolution"

    invoke-static {v2, v1, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v1, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getLimitedStreamSizeArray(IILandroid/hardware/camera2/CameraCharacteristics;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v1, "previewSupportedResolutions"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json.toString()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p0, "algoConfigPreview"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getFaceData(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 10

    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "SCALER_CROP_REGION.name"

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/graphics/Rect;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "STATISTICS_FACES.name"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, p1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_2

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v2, v2, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v4, v1, v0, p1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    xor-int/2addr v0, v1

    const-string v1, "height"

    const-string v3, "width"

    const-string v4, "top"

    const-string v5, "left"

    if-eqz v0, :cond_7

    array-length v0, p1

    :goto_4
    if-ge v2, v0, :cond_6

    aget-object v6, p1, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v8, v7

    iget-object v7, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v9, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/2addr v9, v7

    if-le v8, v9, :cond_5

    iput-object v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    :cond_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v6

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    invoke-virtual {p3, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    invoke-virtual {p3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    :cond_7
    invoke-virtual {p3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p3, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_5
    return-void
.end method

.method public final getJniClient(I)J
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string p1, "Unknown stream type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    return-wide p0

    :cond_1
    iget-wide p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    return-wide p0
.end method

.method public final initialize(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const-string p1, "Unknown stream type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->deinitialize(I)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    const-string p1, "as-bokeh-capture"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdCapture:J

    cmp-long p0, v4, v2

    if-nez p0, :cond_4

    return v1

    :cond_2
    iget-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->deinitialize(I)V

    :cond_3
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    const-string p1, "as-bokeh-preview"

    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jniClientIdPreview:J

    cmp-long p0, v4, v2

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final isSupported()Z
    .locals 13

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    const-string v3, "arcsoft-sfbokeh-preview"

    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-static {v3, v4, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "Config missing for algo"

    sget-object v6, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    if-eqz v3, :cond_8

    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    const-string v7, "enable"

    invoke-static {v7, v3, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigCapture:Lorg/json/JSONObject;

    const/4 v9, 0x0

    const-string v10, "algoConfigCapture"

    if-eqz v8, :cond_7

    const-string v11, "extension-enable"

    invoke-static {v11, v8, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v12}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v8, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "arcsoft-sfbokeh-capture"

    invoke-static {v8, v4, v0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigCapture:Lorg/json/JSONObject;

    invoke-static {v7, v0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigCapture:Lorg/json/JSONObject;

    if-eqz p0, :cond_4

    invoke-static {v11, p0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {v0, v12}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1

    :cond_4
    invoke-static {v10}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_5
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return v1

    :cond_7
    invoke-static {v10}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v9

    :cond_8
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final processStream(ILjava/lang/String;)Z
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getJniClient(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    sget-object v4, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const-string v0, "client id is invalid"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONTokener;

    move-object/from16 v6, p2

    invoke-direct {v3, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v6, "results"

    const/4 v7, -0x1

    invoke-static {v6, v3, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    check-cast v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_1d

    if-nez v3, :cond_2

    goto/16 :goto_11

    :cond_2
    if-nez p1, :cond_3

    const/4 v5, 0x1

    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, ""

    const-string v8, "focus"

    const-string v9, "SCALER_CROP_REGION.name"

    const-string v10, "lib-name"

    const-string v11, "libName"

    const-string v12, "largestFace"

    const-string v13, "faces"

    const-string v14, "orientation"

    const-string v15, "intensity"

    move-object/from16 p1, v7

    const-string v7, "height"

    move-wide/from16 v16, v1

    const-string v1, "width"

    const-string v2, "top"

    move-object/from16 p2, v11

    const-string v11, "left"

    const-string v18, "algoConfigPreview"

    move-object/from16 v19, v10

    iget v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->jsonIndex:I

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v5, :cond_17

    move/from16 v21, v5

    const-string v5, "enable"

    move-object/from16 v22, v7

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v5, :cond_16

    const-string v7, "bokeh-blur-level-mapping"

    invoke-static {v7, v5, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_5

    const-wide v23, 0x3fe999999999999aL    # 0.8

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_5
    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v5, :cond_15

    const-string v7, "low-light-lux"

    invoke-static {v7, v5, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    const-string v7, "lowLuxThres"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v5, :cond_14

    const-string v7, "face-too-far-percentage"

    invoke-static {v7, v5, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    const-string v7, "faceDistThres"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v5, :cond_13

    const-string v7, "skipped-frame-number"

    invoke-static {v7, v5, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v7, "skipFrameNumber"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v5

    iget-object v7, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->prvsLuxVals:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v15

    move/from16 v23, v10

    const/4 v10, 0x3

    if-lt v15, v10, :cond_6

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_6
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v5, "<this>"

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    add-float/2addr v7, v15

    goto :goto_2

    :cond_7
    int-to-float v5, v10

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v7, "curAverageLux"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v7, -0x1

    invoke-static {v5, v9, v6, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_8

    move-object/from16 v7, p1

    goto :goto_3

    :cond_8
    move-object v7, v5

    :goto_3
    invoke-static {v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v7, 0x1

    :goto_5
    const-string v9, "mfacingCode"

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget v7, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/4 v15, 0x0

    invoke-static {v7, v9, v10, v15}, Lcom/motorola/camera/shared/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v7

    invoke-virtual {v4, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroid/graphics/Rect;

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "STATISTICS_FACES.name"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, -0x1

    invoke-static {v8, v6, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    if-nez v8, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v10, :cond_d

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p1, v8

    instance-of v8, v15, Lorg/json/JSONObject;

    if-eqz v8, :cond_c

    check-cast v15, Lorg/json/JSONObject;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    sget-object v8, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    goto :goto_6

    :cond_d
    :goto_8
    new-instance v8, Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->previewSize:Landroid/graphics/Point;

    iget v14, v10, Landroid/graphics/Point;->x:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    const/4 v15, 0x0

    invoke-direct {v8, v15, v15, v14, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v9, v7, v5, v8}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getScaledFaceRects(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v5

    array-length v7, v5

    if-nez v7, :cond_e

    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_9

    :cond_e
    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_9
    xor-int/lit8 v8, v8, 0x1

    const-string v9, "faceBottom"

    const-string v10, "faceRight"

    const-string v14, "faceTop"

    const-string v15, "faceLeft"

    move-object/from16 v24, v1

    const-string v1, "motFaceDetected"

    if-eqz v8, :cond_f

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v1, 0x0

    aget-object v7, v5, v1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget-object v7, v5, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget-object v7, v5, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget-object v1, v5, v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v3, :cond_10

    invoke-virtual {v0, v6, v1, v5}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getFaceData(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {v4, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v5, v24

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v7, v22

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v10, v20

    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v1, :cond_12

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-static {v2, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v1, :cond_11

    const-string v2, "model-mode"

    invoke-static {v2, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v8, "modelMode"

    goto/16 :goto_10

    :cond_11
    invoke-static/range {v18 .. v18}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_12
    const/4 v0, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v0, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v0, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v0, 0x0

    invoke-static/range {v18 .. v18}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v24, v1

    move/from16 v21, v5

    move-object/from16 v22, v7

    move v7, v10

    move-object/from16 v1, v19

    move-object/from16 v10, p2

    const-string v5, "enabled"

    move-object/from16 p2, v2

    const/4 v2, 0x1

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v2, 0x50

    invoke-virtual {v4, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "generate-depthmap"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "rotate-depthmap"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "generateDepthMap"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "rotateDepthMap"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    move-object/from16 v19, v11

    const/4 v11, 0x0

    invoke-static {v2, v5, v15, v11}, Lcom/motorola/camera/shared/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v2

    invoke-virtual {v4, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_c
    if-ge v11, v3, :cond_18

    invoke-virtual {v0, v6, v2, v5}, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->getFaceData(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_18
    invoke-virtual {v4, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "facingCode"

    if-nez v2, :cond_19

    goto :goto_d

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x1

    goto :goto_e

    :cond_1a
    :goto_d
    const/4 v2, 0x1

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_e
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->algoConfigPreview:Lorg/json/JSONObject;

    if-eqz v3, :cond_1c

    invoke-static {v1, v3, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "focusType"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v2, -0x1

    invoke-static {v1, v9, v6, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1b

    move-object/from16 v7, p1

    goto :goto_f

    :cond_1b
    move-object v7, v1

    :goto_f
    invoke-static {v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v5, v19

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v6, p2

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v7, v24

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    move-object/from16 v3, v22

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jpegCrop"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v1, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->largestFace:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->size:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v8, v20

    :goto_10
    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "json.toString()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, v21, 0x1

    iget v0, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSFBokehExtension;->maxInputFrameCount:I

    move-wide/from16 v3, v16

    invoke-static {v3, v4, v1, v2, v0}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result v0

    return v0

    :cond_1c
    invoke-static/range {v18 .. v18}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1d
    :goto_11
    const-string v0, "Unable to parse input results"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
