.class public Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsExpressionParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntParam"
.end annotation


# instance fields
.field private defVal:I

.field private maxVal:I

.field private minVal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefVal()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;->defVal:I

    return p0
.end method

.method public getMaxVal()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;->maxVal:I

    return p0
.end method

.method public getMinVal()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;->minVal:I

    return p0
.end method

.method public setDefVal(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;->defVal:I

    return-void
.end method

.method public setMaxVal(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;->maxVal:I

    return-void
.end method

.method public setMinVal(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;->minVal:I

    return-void
.end method
