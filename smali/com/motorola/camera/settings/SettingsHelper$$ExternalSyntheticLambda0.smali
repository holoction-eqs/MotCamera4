.class public final synthetic Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Landroid/util/Range;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr p1, p0

    if-lez p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x2f

    if-eq p0, p1, :cond_1

    move v2, v3

    :cond_1
    return v2

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :pswitch_8
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v1, p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :pswitch_9
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_4

    move v2, v3

    :cond_4
    return v2

    :pswitch_a
    check-cast p1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    if-lez p1, :cond_5

    move v2, v3

    :cond_5
    return v2

    :pswitch_b
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-virtual {p0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v2, v3

    :cond_6
    return v2

    :pswitch_c
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Landroid/util/Size;

    sget p0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-nez p0, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    return v2

    :pswitch_11
    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    sget-object p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, p1, :cond_9

    move v2, v3

    :cond_9
    xor-int/lit8 p0, v2, 0x1

    return p0

    :pswitch_12
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    sget-object p1, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_0
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/VideoHelper;->UNSUPPORTED_DESKTOP_SIZES:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
