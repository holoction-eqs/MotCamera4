.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/settings/CameraType;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/settings/CameraType;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isCliCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliHdWidescreenAspectRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    :goto_0
    invoke-static {p1, p0}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :goto_1
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object v0, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI_SQUARE:Ljava/util/List;

    iget-object v3, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliHdWidescreenAspectRatioSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI_16V9:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/motorola/camera/VideoFormat;->CLI_FHD:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    :cond_5
    :goto_2
    move v1, v2

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
