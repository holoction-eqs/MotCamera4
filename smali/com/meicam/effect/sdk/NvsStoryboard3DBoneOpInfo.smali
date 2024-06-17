.class public Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo;
.super Lcom/meicam/effect/sdk/NvsArbitraryData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;
    }
.end annotation


# instance fields
.field private mBoneOpInfoHashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsArbitraryData;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo;->mBoneOpInfoHashtable:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getBoneOpInfoHashtable()Ljava/util/Hashtable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo;->mBoneOpInfoHashtable:Ljava/util/Hashtable;

    return-object p0
.end method

.method public setBoneOpInfoHashtable(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo;->mBoneOpInfoHashtable:Ljava/util/Hashtable;

    return-void
.end method
