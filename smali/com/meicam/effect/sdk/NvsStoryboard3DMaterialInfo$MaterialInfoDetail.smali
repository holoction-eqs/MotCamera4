.class public Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialInfoDetail"
.end annotation


# instance fields
.field private ambientColor:Lcom/meicam/effect/sdk/NvsColor;

.field private ambientOcclusion:F

.field private ambientOcclusionTexture:Ljava/lang/String;

.field private diffuseColor:Lcom/meicam/effect/sdk/NvsColor;

.field private diffuseTexture:Ljava/lang/String;

.field private emissiveColor:Lcom/meicam/effect/sdk/NvsColor;

.field private emissiveMapIntensity:F

.field private emissiveTexture:Ljava/lang/String;

.field private iblIntensity:F

.field private iblIrradianceTexture:Ljava/lang/String;

.field private iblPrefilterTexture:Ljava/lang/String;

.field private iblRotationAngleY:F

.field private index:I

.field private metalness:F

.field private metalnessTexture:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private normalMapIntensity:F

.field private normalTexture:Ljava/lang/String;

.field private opacity:F

.field private panoramicReflectionMap:Z

.field private reflectionTexture:Ljava/lang/String;

.field private reflectivity:F

.field private roughness:F

.field private roughnessTexture:Ljava/lang/String;

.field private shadowCaster:Z

.field private shadowReceiver:Z

.field private shininess:F

.field private specularColor:Lcom/meicam/effect/sdk/NvsColor;

.field private specularTexture:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->index:I

    new-instance v0, Lcom/meicam/effect/sdk/NvsColor;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/meicam/effect/sdk/NvsColor;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->diffuseColor:Lcom/meicam/effect/sdk/NvsColor;

    iput v1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->reflectivity:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->panoramicReflectionMap:Z

    iput v1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->normalMapIntensity:F

    new-instance v2, Lcom/meicam/effect/sdk/NvsColor;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/meicam/effect/sdk/NvsColor;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->specularColor:Lcom/meicam/effect/sdk/NvsColor;

    new-instance v2, Lcom/meicam/effect/sdk/NvsColor;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v1}, Lcom/meicam/effect/sdk/NvsColor;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveColor:Lcom/meicam/effect/sdk/NvsColor;

    iput v1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveMapIntensity:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->roughness:F

    iput v2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->metalness:F

    new-instance v2, Lcom/meicam/effect/sdk/NvsColor;

    invoke-direct {v2, v3, v3, v3, v1}, Lcom/meicam/effect/sdk/NvsColor;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientColor:Lcom/meicam/effect/sdk/NvsColor;

    iput v1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientOcclusion:F

    iput v1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblIntensity:F

    iput v3, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblRotationAngleY:F

    iput-boolean v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shadowCaster:Z

    iput-boolean v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shadowReceiver:Z

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shininess:F

    iput v1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->opacity:F

    return-void
.end method


# virtual methods
.method public getAmbientColor()Lcom/meicam/effect/sdk/NvsColor;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientColor:Lcom/meicam/effect/sdk/NvsColor;

    return-object p0
.end method

.method public getAmbientOcclusion()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientOcclusion:F

    return p0
.end method

.method public getAmbientOcclusionTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientOcclusionTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getDiffuseColor()Lcom/meicam/effect/sdk/NvsColor;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->diffuseColor:Lcom/meicam/effect/sdk/NvsColor;

    return-object p0
.end method

.method public getDiffuseTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->diffuseTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getEmissiveColor()Lcom/meicam/effect/sdk/NvsColor;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveColor:Lcom/meicam/effect/sdk/NvsColor;

    return-object p0
.end method

.method public getEmissiveMapIntensity()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveMapIntensity:F

    return p0
.end method

.method public getEmissiveTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getIblIntensity()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblIntensity:F

    return p0
.end method

.method public getIblIrradianceTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblIrradianceTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getIblPrefilterTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblPrefilterTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getIblRotationAngleY()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblRotationAngleY:F

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->index:I

    return p0
.end method

.method public getMetalness()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->metalness:F

    return p0
.end method

.method public getMetalnessTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->metalnessTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNormalMapIntensity()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->normalMapIntensity:F

    return p0
.end method

.method public getNormalTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->normalTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->opacity:F

    return p0
.end method

.method public getReflectionTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->reflectionTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getReflectivity()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->reflectivity:F

    return p0
.end method

.method public getRoughness()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->roughness:F

    return p0
.end method

.method public getRoughnessTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->roughnessTexture:Ljava/lang/String;

    return-object p0
.end method

.method public getShininess()F
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shininess:F

    return p0
.end method

.method public getSpecularColor()Lcom/meicam/effect/sdk/NvsColor;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->specularColor:Lcom/meicam/effect/sdk/NvsColor;

    return-object p0
.end method

.method public getSpecularTexture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->specularTexture:Ljava/lang/String;

    return-object p0
.end method

.method public isPanoramicReflectionMap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->panoramicReflectionMap:Z

    return p0
.end method

.method public isShadowCaster()Z
    .locals 0

    iget-boolean p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shadowCaster:Z

    return p0
.end method

.method public isShadowReceiver()Z
    .locals 0

    iget-boolean p0, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shadowReceiver:Z

    return p0
.end method

.method public setAmbientColor(Lcom/meicam/effect/sdk/NvsColor;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientColor:Lcom/meicam/effect/sdk/NvsColor;

    return-void
.end method

.method public setAmbientOcclusion(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientOcclusion:F

    return-void
.end method

.method public setAmbientOcclusionTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->ambientOcclusionTexture:Ljava/lang/String;

    return-void
.end method

.method public setDiffuseColor(Lcom/meicam/effect/sdk/NvsColor;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->diffuseColor:Lcom/meicam/effect/sdk/NvsColor;

    return-void
.end method

.method public setDiffuseTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->diffuseTexture:Ljava/lang/String;

    return-void
.end method

.method public setEmissiveColor(Lcom/meicam/effect/sdk/NvsColor;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveColor:Lcom/meicam/effect/sdk/NvsColor;

    return-void
.end method

.method public setEmissiveMapIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveMapIntensity:F

    return-void
.end method

.method public setEmissiveTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->emissiveTexture:Ljava/lang/String;

    return-void
.end method

.method public setIblIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblIntensity:F

    return-void
.end method

.method public setIblIrradianceTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblIrradianceTexture:Ljava/lang/String;

    return-void
.end method

.method public setIblPrefilterTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblPrefilterTexture:Ljava/lang/String;

    return-void
.end method

.method public setIblRotationAngleY(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->iblRotationAngleY:F

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->index:I

    return-void
.end method

.method public setMetalness(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->metalness:F

    return-void
.end method

.method public setMetalnessTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->metalnessTexture:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->name:Ljava/lang/String;

    return-void
.end method

.method public setNormalMapIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->normalMapIntensity:F

    return-void
.end method

.method public setNormalTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->normalTexture:Ljava/lang/String;

    return-void
.end method

.method public setOpacity(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->opacity:F

    return-void
.end method

.method public setPanoramicReflectionMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->panoramicReflectionMap:Z

    return-void
.end method

.method public setReflectionTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->reflectionTexture:Ljava/lang/String;

    return-void
.end method

.method public setReflectivity(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->reflectivity:F

    return-void
.end method

.method public setRoughness(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->roughness:F

    return-void
.end method

.method public setRoughnessTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->roughnessTexture:Ljava/lang/String;

    return-void
.end method

.method public setShadowCaster(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shadowCaster:Z

    return-void
.end method

.method public setShadowReceiver(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shadowReceiver:Z

    return-void
.end method

.method public setShininess(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->shininess:F

    return-void
.end method

.method public setSpecularColor(Lcom/meicam/effect/sdk/NvsColor;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->specularColor:Lcom/meicam/effect/sdk/NvsColor;

    return-void
.end method

.method public setSpecularTexture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsStoryboard3DMaterialInfo$MaterialInfoDetail;->specularTexture:Ljava/lang/String;

    return-void
.end method
