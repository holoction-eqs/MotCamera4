.class public Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsExpressionParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatParam"
.end annotation


# instance fields
.field private defVal:F

.field private maxVal:F

.field private minVal:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefVal()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;->defVal:F

    return p0
.end method

.method public getMaxVal()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;->maxVal:F

    return p0
.end method

.method public getMinVal()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;->minVal:F

    return p0
.end method

.method public setDefVal(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;->defVal:F

    return-void
.end method

.method public setMaxVal(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;->maxVal:F

    return-void
.end method

.method public setMinVal(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;->minVal:F

    return-void
.end method
