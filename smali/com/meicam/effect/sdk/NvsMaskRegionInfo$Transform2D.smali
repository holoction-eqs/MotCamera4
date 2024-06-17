.class public Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsMaskRegionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transform2D"
.end annotation


# instance fields
.field private anchor:Lcom/meicam/effect/sdk/NvsPosition2D;

.field private rotation:F

.field private scale:Lcom/meicam/effect/sdk/NvsPosition2D;

.field private translation:Lcom/meicam/effect/sdk/NvsPosition2D;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition2D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/effect/sdk/NvsPosition2D;

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition2D;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2}, Lcom/meicam/effect/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/effect/sdk/NvsPosition2D;

    iput v1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition2D;

    invoke-direct {v0, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition2D;-><init>(FF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method

.method public constructor <init>(Lcom/meicam/effect/sdk/NvsPosition2D;Lcom/meicam/effect/sdk/NvsPosition2D;FLcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/effect/sdk/NvsPosition2D;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/effect/sdk/NvsPosition2D;

    iput p3, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    iput-object p4, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method


# virtual methods
.method public getAnchor()Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-object p0
.end method

.method public getRotation()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    return p0
.end method

.method public getScale()Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-object p0
.end method

.method public getTranslation()Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-object p0
.end method

.method public setAnchor(Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->anchor:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->rotation:F

    return-void
.end method

.method public setScale(Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->scale:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method

.method public setTranslation(Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsMaskRegionInfo$Transform2D;->translation:Lcom/meicam/effect/sdk/NvsPosition2D;

    return-void
.end method
