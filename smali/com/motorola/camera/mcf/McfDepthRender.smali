.class public final Lcom/motorola/camera/mcf/McfDepthRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfDepthRender"

.field public static final FORMAT_NV21:Ljava/lang/String; = "NV21"


# instance fields
.field private final mFocalPointX:I

.field private final mFocalPointY:I

.field private final mFocusType:Ljava/lang/String;

.field private final mFormat:Ljava/lang/String;

.field private final mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field private final mIntensity:F

.field private final mName:Ljava/lang/String;

.field private final mRefHeight:I

.field private final mRefWidth:I

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    const-string v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const-string v0, "renderParam"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "intensity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    const-string v0, "focusPoint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    const-string v1, "top"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    const-string v0, "primaryImage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    const-string v0, "focusType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFocalPointX()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    return p0
.end method

.method public getFocalPointY()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    return p0
.end method

.method public getFocusType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0
.end method

.method public getIntensity()F
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRefHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    return p0
.end method

.method public getRefWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfDepthRender{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFocalPointX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFocalPointY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocalPointY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mRefHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFocusType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfDepthRender;->mFocusType:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
