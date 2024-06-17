.class public Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData;
.super Lcom/meicam/effect/sdk/NvsArbitraryData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;
    }
.end annotation


# instance fields
.field private mAnimStateInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsArbitraryData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData;->mAnimStateInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsArbitraryData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData;->mAnimStateInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAnimStateInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData;->mAnimStateInfos:Ljava/util/List;

    return-object p0
.end method

.method public setAnimStateInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData$AnimStateInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DSceneAnimData;->mAnimStateInfos:Ljava/util/List;

    return-void
.end method
