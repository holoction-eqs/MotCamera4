.class public Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MorphingInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;->name:Ljava/lang/String;

    iput p2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;->weight:F

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;->weight:F

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;->weight:F

    return-void
.end method
