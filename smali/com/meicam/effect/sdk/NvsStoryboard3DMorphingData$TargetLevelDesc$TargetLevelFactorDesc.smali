.class public Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetLevelFactorDesc"
.end annotation


# instance fields
.field private morphName:Ljava/lang/String;

.field private opType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;->opType:I

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;->morphName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMorphName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;->morphName:Ljava/lang/String;

    return-object p0
.end method

.method public getOpType()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;->opType:I

    return p0
.end method

.method public setMorphName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;->morphName:Ljava/lang/String;

    return-void
.end method

.method public setOpType(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc$TargetLevelFactorDesc;->opType:I

    return-void
.end method
