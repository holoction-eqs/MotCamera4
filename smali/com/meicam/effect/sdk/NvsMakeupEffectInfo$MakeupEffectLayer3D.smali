.class public Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer3D;
.super Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeupEffectLayer3D"
.end annotation


# instance fields
.field public blendingMode:I

.field public texColor:Lcom/meicam/effect/sdk/NvsColor;

.field public texFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBlendingMode()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer3D;->blendingMode:I

    return p0
.end method

.method public getTexColor()Lcom/meicam/effect/sdk/NvsColor;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer3D;->texColor:Lcom/meicam/effect/sdk/NvsColor;

    return-object p0
.end method

.method public getTexFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer3D;->texFilePath:Ljava/lang/String;

    return-object p0
.end method
