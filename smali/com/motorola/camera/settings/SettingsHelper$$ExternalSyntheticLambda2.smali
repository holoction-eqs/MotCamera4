.class public final synthetic Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/VideoFormat;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/VideoFormat;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/VideoFormat;

    iput p2, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda2;->f$1:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object v0, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/VideoFormat;

    iget-object v2, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v0, v2}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/motorola/camera/VideoHelper;->isSameFrameRateUpper(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->getAspectRatio(Landroid/util/Size;)F

    move-result p1

    iget p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda2;->f$1:F

    invoke-static {p1, p0}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
