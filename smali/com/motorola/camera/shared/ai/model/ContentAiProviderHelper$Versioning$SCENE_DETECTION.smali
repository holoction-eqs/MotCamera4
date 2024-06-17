.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SCENE_DETECTION"

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkState$enumunboxing$(II)I
    .locals 0

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
