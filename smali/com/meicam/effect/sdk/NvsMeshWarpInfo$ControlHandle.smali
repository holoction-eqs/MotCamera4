.class public Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsMeshWarpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlHandle"
.end annotation


# instance fields
.field private bwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;

.field private endPt:Lcom/meicam/effect/sdk/NvsPosition2D;

.field private fwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition2D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->endPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition2D;

    invoke-direct {v0, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->bwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition2D;

    invoke-direct {v0, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->fwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method


# virtual methods
.method public getBwdCtlPt()Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->bwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-object p0
.end method

.method public getEndPt()Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->endPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-object p0
.end method

.method public getFwdCtlPt()Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->fwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-object p0
.end method

.method public setBwdCtlPt(Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->bwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method

.method public setEndPt(Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->endPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method

.method public setFwdCtlPt(Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;->fwdCtlPt:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method
