.class public Lcom/meicam/effect/sdk/NvsMeshWarpInfo;
.super Lcom/meicam/effect/sdk/NvsArbitraryData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;,
        Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;
    }
.end annotation


# instance fields
.field private cols:I

.field private controlUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;",
            ">;"
        }
    .end annotation
.end field

.field private refBounding:Landroid/graphics/RectF;

.field private rows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsArbitraryData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->controlUnits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCols()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->cols:I

    return p0
.end method

.method public getControlUnits()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->controlUnits:Ljava/util/List;

    return-object p0
.end method

.method public getRefBounding()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->refBounding:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getRows()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->rows:I

    return p0
.end method

.method public setCols(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->cols:I

    return-void
.end method

.method public setControlUnits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->controlUnits:Ljava/util/List;

    return-void
.end method

.method public setRefBounding(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->refBounding:Landroid/graphics/RectF;

    return-void
.end method

.method public setRows(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->rows:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NvsMeshWarpInfo{rows="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", refBounding.left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->refBounding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", refBounding.right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->refBounding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", refBounding.bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->refBounding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", refBounding.top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->refBounding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", controlUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo;->controlUnits:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
