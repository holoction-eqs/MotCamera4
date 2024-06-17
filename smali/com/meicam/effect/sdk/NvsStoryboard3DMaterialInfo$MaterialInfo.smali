.class public Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialInfo"
.end annotation


# instance fields
.field private fbxName:Ljava/lang/String;

.field private mMaterialInfoHashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfo;->mMaterialInfoHashtable:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getFbxName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfo;->fbxName:Ljava/lang/String;

    return-object p0
.end method

.method public getMaterialInfoHashtable()Ljava/util/Hashtable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfo;->mMaterialInfoHashtable:Ljava/util/Hashtable;

    return-object p0
.end method

.method public setFbxName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfo;->fbxName:Ljava/lang/String;

    return-void
.end method

.method public setMaterialInfoHashtable(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfo;->mMaterialInfoHashtable:Ljava/util/Hashtable;

    return-void
.end method
