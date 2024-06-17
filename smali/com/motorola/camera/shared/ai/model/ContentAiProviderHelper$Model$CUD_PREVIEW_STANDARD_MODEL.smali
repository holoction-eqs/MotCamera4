.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
.source "SourceFile"


# instance fields
.field public final deviceName:Ljava/lang/String;

.field public final modelVersionMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v1, "CUD_PREVIEW_STANDARD_MODEL"

    const/16 v2, 0x13

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD_PREVIEW_STANDARD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-string v4, "cud_preview_standard_model"

    const/16 v5, 0x65

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD_PREVIEW;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;->deviceName:Ljava/lang/String;

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "hiphid"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;->modelVersionMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final buildUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->makeUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "super.makeUriBuilder().a\u2026dPath(deviceName).build()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final modelVersion()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;->modelVersionMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;->deviceName:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
