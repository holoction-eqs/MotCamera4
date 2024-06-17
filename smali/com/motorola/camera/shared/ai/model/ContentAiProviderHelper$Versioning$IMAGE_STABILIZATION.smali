.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$IMAGE_STABILIZATION;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "IMAGE_STABILIZATION"

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkState$enumunboxing$(II)I
    .locals 1

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    div-int/lit8 p0, p2, 0x64

    div-int/lit8 v0, p1, 0x64

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    :goto_0
    const/4 p0, 0x5

    goto :goto_1

    :cond_1
    if-ge p2, p1, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
