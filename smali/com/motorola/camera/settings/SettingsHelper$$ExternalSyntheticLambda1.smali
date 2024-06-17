.class public final synthetic Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Ljava/lang/Integer;

    check-cast v3, Lcom/motorola/camera/settings/Setting;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    check-cast p0, Ljava/util/List;

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, v3}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :goto_2
    check-cast p0, Landroid/graphics/Point;

    check-cast v3, Lcom/motorola/camera/PreviewSize;

    check-cast p1, Lcom/motorola/camera/PreviewSize;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v0

    iget v4, p0, Landroid/graphics/Point;->x:I

    iget v5, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    if-gt v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    iget v4, p0, Landroid/graphics/Point;->x:I

    iget v5, p0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    iget v4, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-gt v0, p0, :cond_2

    invoke-virtual {v3, p1}, Lcom/motorola/camera/PreviewSize;->isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
