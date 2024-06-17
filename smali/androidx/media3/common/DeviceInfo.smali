.class public final Landroidx/media3/common/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I

.field public final routingControllerId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(III)V

    iget v2, v0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    iget v3, v0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    const/4 v4, 0x1

    if-gt v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    new-instance v2, Landroidx/media3/common/DeviceInfo;

    invoke-direct {v2, v0}, Landroidx/media3/common/DeviceInfo;-><init>(Landroidx/media3/common/DeviceInfo$Builder;)V

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/DeviceInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    iput v0, p0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    iget v0, p1, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    iput v0, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    iget v0, p1, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    iput v0, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget-object p1, p1, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/DeviceInfo;

    iget v1, p1, Landroidx/media3/common/DeviceInfo;->playbackType:I

    iget v3, p0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    iget v3, p1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget v3, p1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
