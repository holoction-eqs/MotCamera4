.class public Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsMaskRegionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionInfo"
.end annotation


# instance fields
.field private ellipse2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;

.field private mirror:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsPosition2D;",
            ">;"
        }
    .end annotation
.end field

.field private transform2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->points:Ljava/util/List;

    new-instance v0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->ellipse2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;

    new-instance v0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->mirror:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;

    new-instance v0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->transform2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;

    iput p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->type:I

    return-void
.end method


# virtual methods
.method public getEllipse2D()Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->ellipse2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;

    return-object p0
.end method

.method public getMirror()Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->mirror:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;

    return-object p0
.end method

.method public getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsPosition2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->points:Ljava/util/List;

    return-object p0
.end method

.method public getTransform2D()Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->transform2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->type:I

    return p0
.end method

.method public setEllipse2D(Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->ellipse2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;

    return-void
.end method

.method public setMirror(Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->mirror:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Mirror;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsPosition2D;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->points:Ljava/util/List;

    return-void
.end method

.method public setTransform2D(Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$RegionInfo;->transform2d:Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;

    return-void
.end method
