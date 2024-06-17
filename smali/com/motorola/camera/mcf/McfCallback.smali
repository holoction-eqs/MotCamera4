.class public Lcom/motorola/camera/mcf/McfCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final JSON:Lcom/motorola/camera/mcf/McfCallback$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfCallback$Key;"
        }
    .end annotation
.end field

.field private static final JSON_CALLBACK_DATA:Ljava/lang/String; = "data"

.field private static final JSON_CALLBACK_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "McfCallback"


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            "Lcom/motorola/camera/mcf/McfCallback$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfCallback$Key;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallback$Value;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback$Value;->mValue:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfCallback;->get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    const-string p1, "Undefined JSON string."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f

    :try_start_1
    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->UNDEFINED:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "McfCallbackAutoCapture"

    const-string v5, "version"

    const-string v6, "model"

    const-string v7, "hdr-detected"

    const-string v8, "ev-bracket"

    const-string v9, "status"

    const-string v10, "Exception parsing JSON: "

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    const-string p1, "Callback type is UNDEFINED"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_0
    :try_start_2
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;-><init>()V

    const-string v1, "process_time_estimate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "timeStamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTimeStamp:J

    const-string v1, "frameCollectionTimeEst"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mFrameCollectionTimeEst:I

    const-string v1, "miscTimeEst"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mMiscTimeEst:I

    const-string v1, "totalTimeEst"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackProcessTimeEstimate"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_1
    :try_start_3
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;->result:Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;

    const-string v2, "mot-nv-detect-result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "nv-detected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->isNVdetected:I

    const-string v2, "nv-confidence-dre-prediction"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_dre_prediction:D

    const-string v2, "nv-confidence-bod"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_bod_score:D

    const-string v2, "nv-confidence-llc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_llc_score:D
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackMotNVDetect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_2
    :try_start_4
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    const-string v4, "jg-drsd-result"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput-boolean v3, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->hdrDetected:Z

    const-string v3, "global-cam-id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->globalCamId:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->evBracket:[D

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackJGDrsd"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_3
    :try_start_5
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    const-string v4, "bst-drsd-result"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->hdrDetected:Z

    const-string v4, "is-overexposed"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iput-boolean v4, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isOverexposed:Z

    const-string v4, "is-underexposed"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    iput-boolean v3, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->isUnderexposed:Z

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;->evBracket:[D

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackBSTDrsd"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_4
    :try_start_6
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;->result:Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;

    const-string v2, "mot-drsdv2-confidence"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->isHdrDetected:I

    const-string v2, "hdr-confidence-dre-nn"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_dre_nn:D

    const-string v2, "hdr-confidence-gmd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_gmd:D

    const-string v2, "hdr-confidence-lmd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_lmd:D
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_9

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackMotDrsdv2"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_5
    :try_start_7
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;-><init>()V

    iget-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    const-string v3, "arcsoft-drsd-result"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "hdr-mode"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->hdrMode:I

    const-string v3, "count-hist"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHist:I

    const-string v3, "count-hist-thresh"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->countHistThresh:I

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, v1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->evBracket:[D

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackArcsoftDrsd"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_6
    :try_start_8
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackAIScene;-><init>()V

    const-string v1, "aisd-result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "ai-scene"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    const-string v1, "candidateScenes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mCandidateScenes:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_7
    :try_start_9
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;-><init>()V

    const-string v1, "auto-capture"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mType:I

    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mAction:I

    const-string v1, "refTimestampNs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;->mRefTimestampNs:J
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_9

    :catch_7
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_8
    :try_start_a
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;-><init>()V

    const-string v4, "model-load-complete"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_9

    if-nez v6, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_6

    :try_start_b
    invoke-static {v4}, Lcom/motorola/camera/shared/ai/model/McfMlModel;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/McfMlModel;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_9

    :catch_8
    :cond_6
    :try_start_c
    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mStatus:I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_9

    :catch_9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackModelLoadComplete"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_9
    :try_start_d
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackModelResults;-><init>()V

    const-string v4, "model-results"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b

    if-nez v6, :cond_7

    goto :goto_7

    :cond_7
    move v3, v2

    :goto_7
    if-eqz v3, :cond_8

    :try_start_e
    invoke-static {v4}, Lcom/motorola/camera/shared/ai/model/McfMlModel;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/McfMlModel;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_b

    :catch_a
    :cond_8
    :try_start_f
    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mStatus:I

    const-string v1, "timestamp"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mTimestampNs:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    const-string v1, "results"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_8
    if-ge v2, v1, :cond_9

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/mcf/McfModelResult;->parseJson(Lorg/json/JSONObject;)Lcom/motorola/camera/mcf/McfModelResult;

    move-result-object v3

    iget-object v4, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_b

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackModelResults"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :pswitch_a
    :try_start_10
    new-instance p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfRtDepthStatus;-><init>()V

    const-string v1, "real-time-depth-status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_9
    :goto_9
    move-object v0, p1

    goto :goto_a

    :catch_c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfRtDepthStatus"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :pswitch_b
    :try_start_11
    new-instance p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;-><init>()V

    const-string v1, "best-shot-video-trigger"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "videoStartTs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    const-string v1, "videoStopTs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    const-string v1, "jobId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_9

    :catch_d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "McfCallbackBestShotVideo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-object v0

    :catch_e
    move-exception p0

    sget-object p1, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception obtaining JSON data object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_f
    move-exception p0

    sget-object p1, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception obtaining JSON object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCallbackType()Lcom/motorola/camera/mcf/McfCallback$CallbackType;
    .locals 4

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfCallback;->get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->UNDEFINED:Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    const-string v1, "Undefined JSON string."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/McfCallback$CallbackType;->toEnum(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/motorola/camera/mcf/McfCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception obtaining type from JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getKeys()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final set(Lcom/motorola/camera/mcf/McfCallback$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfCallback$Key;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfCallback$Value;

    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/motorola/camera/mcf/McfCallback$Value;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfCallback$Value;

    invoke-direct {v0, p2}, Lcom/motorola/camera/mcf/McfCallback$Value;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setJson(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfCallback;->set(Lcom/motorola/camera/mcf/McfCallback$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string/jumbo v0, "{"

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v2, "}"

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string/jumbo v3, "{motorola.camera.mcf.callback.json="

    invoke-static {v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfCallback$Value;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfCallback$Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
