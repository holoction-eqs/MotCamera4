.class public Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetLevelDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;
    }
.end annotation


# instance fields
.field private mTargetLevelFactorDesc:Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;

.field private name:Ljava/lang/String;

.field private weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetLevelFactorDesc()Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;->mTargetLevelFactorDesc:Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;

    return-object p0
.end method

.method public getWeight()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;->weight:F

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;->name:Ljava/lang/String;

    return-void
.end method

.method public setTargetLevelFactorDesc(Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;->mTargetLevelFactorDesc:Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;

    return-void
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;->weight:F

    return-void
.end method
