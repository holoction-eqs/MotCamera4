.class public final Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isNVdetected:I

.field public nvDetect_bod_score:D

.field public nvDetect_dre_prediction:D

.field public nvDetect_llc_score:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->isNVdetected:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_dre_prediction:D

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_bod_score:D

    iput-wide v0, p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;->nvDetect_llc_score:D

    return-void
.end method
