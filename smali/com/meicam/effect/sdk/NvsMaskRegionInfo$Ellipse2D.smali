.class public Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsMaskRegionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ellipse2D"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private center:Lcom/meicam/effect/sdk/NvsPosition2D;

.field private theta:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition2D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/effect/sdk/NvsPosition2D;

    iput v1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    iput v1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    iput v1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    return-void
.end method

.method public constructor <init>(Lcom/meicam/effect/sdk/NvsPosition2D;FFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/effect/sdk/NvsPosition2D;

    iput p2, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    iput p3, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    iput p4, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    return-void
.end method


# virtual methods
.method public getA()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    return p0
.end method

.method public getB()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    return p0
.end method

.method public getCenter()Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-object p0
.end method

.method public getTheta()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    return p0
.end method

.method public setA(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->a:F

    return-void
.end method

.method public setB(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->b:F

    return-void
.end method

.method public setCenter(Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->center:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method

.method public setTheta(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Ellipse2D;->theta:F

    return-void
.end method
