.class public final Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hdrConfidence_dre_nn:D

.field public hdrConfidence_gmd:D

.field public hdrConfidence_lmd:D

.field public isHdrDetected:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->isHdrDetected:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_dre_nn:D

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_gmd:D

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;->hdrConfidence_lmd:D

    return-void
.end method
