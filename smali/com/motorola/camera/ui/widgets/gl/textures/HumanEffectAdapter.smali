.class public final Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mApiLevel:I

.field public final mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

.field public final mHumanVideoFusionParams:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

.field public mInitFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mApiLevel:I

    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanVideoFusionParams:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    return-void
.end method
