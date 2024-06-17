.class public Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimStateInfo"
.end annotation


# instance fields
.field private animName:Ljava/lang/String;

.field private animStartTime:I

.field private lastAnimName:Ljava/lang/String;

.field private lastAnimStartTime:I

.field private lastAnimStopTime:I

.field private layerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:I

    iput v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:I

    iput v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:I

    iput v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:I

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    iput p3, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    iput p3, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:I

    iput p4, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:I

    iput p5, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:I

    iput-object p6, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnimName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    return-object p0
.end method

.method public getAnimStartTime()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:I

    return p0
.end method

.method public getLastAnimName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimName:Ljava/lang/String;

    return-object p0
.end method

.method public getLastAnimStartTime()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:I

    return p0
.end method

.method public getLastAnimStopTime()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:I

    return p0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    return-object p0
.end method

.method public setAnimName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animName:Ljava/lang/String;

    return-void
.end method

.method public setAnimStartTime(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->animStartTime:I

    return-void
.end method

.method public setLastAnimName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimName:Ljava/lang/String;

    return-void
.end method

.method public setLastAnimStartTime(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStartTime:I

    return-void
.end method

.method public setLastAnimStopTime(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->lastAnimStopTime:I

    return-void
.end method

.method public setLayerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;->layerId:Ljava/lang/String;

    return-void
.end method
