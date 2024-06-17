.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
.source "SourceFile"


# instance fields
.field public final deviceName:Ljava/lang/String;

.field public final modelVersionMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v1, "GESTURE_AUTO_CAPTURE_TFLITE_MODEL"

    const/4 v2, 0x1

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v4, "gesture_auto_capture_tflite_model"

    const/16 v5, 0xca

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;->deviceName:Ljava/lang/String;

    const/16 v0, 0xcb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "fogona"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v3, "fogos"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string v4, "fogo"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;->modelVersionMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final buildUri()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;->modelVersionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;->deviceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->makeUriBuilder()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v0, "{\n                    su\u2026build()\n                }"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->buildUri()Landroid/net/Uri;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final modelVersion()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;->modelVersionMap:Ljava/util/Map;

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;->deviceName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
