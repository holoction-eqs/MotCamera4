.class public Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsMeshWarpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlUnit"
.end annotation


# instance fields
.field private bottomLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

.field private bottomRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

.field private topLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

.field private topRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->topLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    new-instance v0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->bottomLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    new-instance v0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->bottomRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    new-instance v0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->topRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-void
.end method


# virtual methods
.method public getBottomLeftHdl()Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->bottomLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-object p0
.end method

.method public getBottomRightHdl()Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->bottomRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-object p0
.end method

.method public getTopLeftHdl()Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->topLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-object p0
.end method

.method public getTopRightHdl()Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->topRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-object p0
.end method

.method public setBottomLeftHdl(Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->bottomLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-void
.end method

.method public setBottomRightHdl(Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->bottomRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-void
.end method

.method public setTopLeftHdl(Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->topLeftHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-void
.end method

.method public setTopRightHdl(Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlUnit;->topRightHdl:Lcom/meicam/effect/sdk/NvsMeshWarpInfo$ControlHandle;

    return-void
.end method
