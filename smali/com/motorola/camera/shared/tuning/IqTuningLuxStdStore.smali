.class public final Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mLuxIdxToStdCoefficients:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->mLuxIdxToStdCoefficients:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->mLuxIdxToStdCoefficients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    iget v1, p0, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;->aCoeff:F

    cmpg-float p1, v1, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p0, p0, Lcom/motorola/camera/shared/tuning/LuxIdxToStdCoefficients;->bCoeff:F

    sub-float/2addr p1, p0

    div-float/2addr p1, v1

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method
