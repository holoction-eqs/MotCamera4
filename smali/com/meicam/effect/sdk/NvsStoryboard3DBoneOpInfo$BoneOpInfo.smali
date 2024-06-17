.class public Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoneOpInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private rotation3D:Lcom/meicam/effect/sdk/NvsPosition3D;

.field private scale3D:Lcom/meicam/effect/sdk/NvsPosition3D;

.field private translation3D:Lcom/meicam/effect/sdk/NvsPosition3D;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition3D;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->scale3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition3D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->rotation3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    new-instance v0, Lcom/meicam/effect/sdk/NvsPosition3D;

    invoke-direct {v0, v1, v1, v1}, Lcom/meicam/effect/sdk/NvsPosition3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->translation3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRotation3D()Lcom/meicam/effect/sdk/NvsPosition3D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->rotation3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-object p0
.end method

.method public getScale3D()Lcom/meicam/effect/sdk/NvsPosition3D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->scale3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-object p0
.end method

.method public getTranslation3D()Lcom/meicam/effect/sdk/NvsPosition3D;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->translation3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setRotation3D(Lcom/meicam/effect/sdk/NvsPosition3D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->rotation3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-void
.end method

.method public setScale3D(Lcom/meicam/effect/sdk/NvsPosition3D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->scale3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-void
.end method

.method public setTranslation3D(Lcom/meicam/effect/sdk/NvsPosition3D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DBoneOpInfo$BoneOpInfo;->translation3D:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-void
.end method
