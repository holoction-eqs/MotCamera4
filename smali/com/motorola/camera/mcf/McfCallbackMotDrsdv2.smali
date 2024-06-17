.class public final Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final result:Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;->result:Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{McfCallbackMotDrsdv2:{hdr-detected"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;->result:Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;

    iget v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->isHdrDetected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hdr-confidence-dre-nn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_dre_nn:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",hdr-confidence-gmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_gmd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",hdr-confidence-lmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_lmd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ",}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
