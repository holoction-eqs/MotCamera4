.class public final Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final result:Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;->result:Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackMotNVDetect:{nv-detected"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;->result:Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->isNVdetected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",nv-confidence-dre-prediction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_dre_prediction:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",nv-confidence-bod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_bod_score:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",nv-confidence-llc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_llc_score:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ",}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
