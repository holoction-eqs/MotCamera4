.class public Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;
.super Lcom/meicam/effect/sdk/NvsArbitraryData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;,
        Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;
    }
.end annotation


# static fields
.field public static final FactorOperationType_None:I = 0x0

.field public static final FactorOperationType_OneMinus:I = 0x1


# instance fields
.field private mMorphingInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetLevelDescList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsArbitraryData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;->mMorphingInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;->mTargetLevelDescList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMorphingInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;->mMorphingInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getTargetLevelDescList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;->mTargetLevelDescList:Ljava/util/List;

    return-object p0
.end method

.method public setMorphingInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$MorphingInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;->mMorphingInfoList:Ljava/util/List;

    return-void
.end method

.method public setTargetLevelDescList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData$TargetLevelDesc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMorphingData;->mTargetLevelDescList:Ljava/util/List;

    return-void
.end method
