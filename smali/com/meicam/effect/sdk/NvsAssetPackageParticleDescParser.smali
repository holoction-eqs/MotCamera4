.class public Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
    }
.end annotation


# static fields
.field public static final EMITTER_PLACE_BOTTOM:I = 0x3

.field public static final EMITTER_PLACE_CENTER:I = 0x4

.field public static final EMITTER_PLACE_LEFT:I = 0x0

.field public static final EMITTER_PLACE_RIGHT:I = 0x1

.field public static final EMITTER_PLACE_TOP:I = 0x2

.field public static final PARTICLE_TYPE_EYE:I = 0x3

.field public static final PARTICLE_TYPE_GESTURE:I = 0x2

.field public static final PARTICLE_TYPE_MOUTH:I = 0x4

.field public static final PARTICLE_TYPE_NORMAL:I = 0x0

.field public static final PARTICLE_TYPE_TOUCH:I = 0x1


# instance fields
.field m_ParticleType:I

.field m_emitters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "particleType"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "touch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    :cond_0
    const-string v2, "gesture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    :cond_1
    const-string v2, "eye"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    goto :goto_0

    :cond_2
    const-string v2, "mouth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    iput p1, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    :cond_3
    :goto_0
    const-string p1, "emitterDesc"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v1, :cond_4

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->GetEmitterDescFromJson(Lorg/json/JSONObject;)Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    move-result-object v1

    iget-object v2, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private GetEmitterDescFromJson(Lorg/json/JSONObject;)Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;
    .locals 3

    new-instance v0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    invoke-direct {v0, p0}, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;-><init>(Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;)V

    const-string p0, "place"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 v1, 0x4

    iput v1, v0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput v2, v0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_2

    :cond_1
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    :goto_1
    iput p0, v0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    goto :goto_2

    :cond_2
    const-string v1, "top"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "bottom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_4
    :goto_2
    const-string p0, "emitterName"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method


# virtual methods
.method public GetLeftEyeEmitter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionEmitter(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public GetLeftEyePlace()I
    .locals 1

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionPlace(I)I

    move-result p0

    return p0
.end method

.method public GetParticlePartitionCount()I
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public GetParticlePartitionEmitter(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-object v0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public GetParticlePartitionPlace(I)I
    .locals 1

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-object v0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_emitters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;

    iget p0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser$NvsParticleEmitterDesc;->m_emitterPlace:I

    return p0
.end method

.method public GetParticleType()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->m_ParticleType:I

    return p0
.end method

.method public GetRightEyeEmitter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionEmitter(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public GetRightEyePlace()I
    .locals 1

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meicam/effect/sdk/NvsAssetPackageParticleDescParser;->GetParticlePartitionPlace(I)I

    move-result p0

    return p0
.end method
