.class public abstract Lcom/motorola/camera/VideoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

.field public static final ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;

.field public static final NON_STANDARD_VIDEO_FORMATS:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_CLI:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_CLI_16V9:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_CLI_SQUARE:Ljava/util/List;

.field public static final SUPPORTED_VIDEO_SIZES_DEPTH:Ljava/util/List;

.field public static final TRUE_BYTE:Ljava/lang/Byte;

.field public static final UNSUPPORTED_DESKTOP_SIZES:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9_2:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/VideoHelper;->NON_STANDARD_VIDEO_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->CLI_FHD:Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI:Ljava/util/List;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI_16V9:Ljava/util/List;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->FHD_SQUARE:Landroid/util/Size;

    sget-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_SQUARE:Landroid/util/Size;

    invoke-static {v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI_SQUARE:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_DEPTH:Ljava/util/List;

    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9:Landroid/util/Size;

    sget-object v4, Lcom/motorola/camera/VideoFormat;->FHD_21V9:Landroid/util/Size;

    sget-object v5, Lcom/motorola/camera/VideoFormat;->FHD_21V9_2:Landroid/util/Size;

    invoke-static {v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/motorola/camera/VideoHelper;->ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    sput-object v7, Lcom/motorola/camera/VideoHelper;->TRUE_BYTE:Ljava/lang/Byte;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    const/16 v8, 0x26

    new-array v8, v8, [Landroid/util/Size;

    const/4 v9, 0x0

    sget-object v10, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    aput-object v10, v8, v9

    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_8K_20V9:Landroid/util/Size;

    aput-object v9, v8, v6

    const/4 v6, 0x2

    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_8K_20P5V9:Landroid/util/Size;

    aput-object v9, v8, v6

    const/4 v6, 0x3

    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_6K:Landroid/util/Size;

    aput-object v9, v8, v6

    const/4 v6, 0x4

    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_6K_39V18:Landroid/util/Size;

    aput-object v9, v8, v6

    const/4 v6, 0x5

    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_6K_21V9:Landroid/util/Size;

    aput-object v9, v8, v6

    const/4 v6, 0x6

    sget-object v9, Lcom/motorola/camera/VideoFormat;->UHD_5K:Landroid/util/Size;

    aput-object v9, v8, v6

    const/4 v6, 0x7

    aput-object v2, v8, v6

    const/16 v2, 0x8

    sget-object v6, Lcom/motorola/camera/VideoFormat;->EQU_4K:Landroid/util/Size;

    aput-object v6, v8, v2

    const/16 v2, 0x9

    sget-object v6, Lcom/motorola/camera/VideoFormat;->UHD_4K_19V9:Landroid/util/Size;

    aput-object v6, v8, v2

    const/16 v2, 0xa

    sget-object v6, Lcom/motorola/camera/VideoFormat;->UHD_4K_19P5V9:Landroid/util/Size;

    aput-object v6, v8, v2

    const/16 v2, 0xb

    sget-object v6, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9:Landroid/util/Size;

    aput-object v6, v8, v2

    const/16 v2, 0xc

    sget-object v6, Lcom/motorola/camera/VideoFormat;->UHD_4K_20P5V9:Landroid/util/Size;

    aput-object v6, v8, v2

    const/16 v2, 0xd

    aput-object v3, v8, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_2:Landroid/util/Size;

    aput-object v3, v8, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_3:Landroid/util/Size;

    aput-object v3, v8, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9:Landroid/util/Size;

    aput-object v3, v8, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9_2:Landroid/util/Size;

    aput-object v3, v8, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/motorola/camera/VideoFormat;->EQU_FHD:Landroid/util/Size;

    aput-object v3, v8, v2

    const/16 v2, 0x13

    aput-object v1, v8, v2

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_18V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_19V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_19P5V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_20V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_20P5V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x19

    aput-object v4, v8, v1

    const/16 v1, 0x1a

    aput-object v5, v8, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_22V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD_18V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD_19V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD_19P5V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD_20V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD_20P5V9:Landroid/util/Size;

    aput-object v2, v8, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD_20P5V9_2:Landroid/util/Size;

    aput-object v2, v8, v1

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x2d0

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x23

    aput-object v1, v8, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x2c0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x24

    aput-object v1, v8, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x160

    const/16 v3, 0x120

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x25

    aput-object v1, v8, v2

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_VIDEO_FORMAT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/VideoHelper;->UNSUPPORTED_DESKTOP_SIZES:Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getBitrateOfSize(ZLandroid/util/Size;I)I
    .locals 1

    sget-object v0, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const p0, 0xc7e3e0

    goto :goto_0

    :cond_0
    const p0, 0xd59f80

    :goto_0
    return p0

    :cond_1
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const p0, 0x10b0760

    goto :goto_1

    :cond_2
    const p0, 0x1312d00

    :goto_1
    return p0

    :cond_3
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    const p0, 0x2160ec0

    goto :goto_2

    :cond_4
    const p0, 0x2faf080

    :goto_2
    return p0

    :cond_5
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_5K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p0, :cond_6

    const p0, 0x2cd29c0

    goto :goto_3

    :cond_6
    const p0, 0x3dfd240

    :goto_3
    return p0

    :cond_7
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p0, :cond_8

    const p0, 0x337f980

    goto :goto_4

    :cond_8
    const p0, 0x4a62f80

    :goto_4
    return p0

    :cond_9
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz p0, :cond_a

    const p0, 0x4692680

    goto :goto_5

    :cond_a
    const p0, 0x6422c40

    :goto_5
    return p0

    :cond_b
    return p2
.end method

.method public static getFilteredVideoFormats(Ljava/util/List;Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    iget-object v5, v4, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v6, v4, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_1

    const/16 v7, 0x18

    if-ne p2, v7, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    sget-object v7, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    if-nez v3, :cond_3

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_4

    iget-object v6, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-static {v6}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v5}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v5

    invoke-static {v6}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v6

    if-ge v5, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static getFormatForMode(I)Lcom/motorola/camera/VideoFormat;
    .locals 1

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaRecorderDataForCurrentMode()Lcom/motorola/camera/capturedmediadata/MediaRecorderData;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/VideoHelper;->getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v0

    return-object v0
.end method

.method public static getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_AVAILABLE_SMVR_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0, v1}, Lcom/motorola/camera/Util;->getSplitList(ILjava/util/List;)Ljava/util/LinkedList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    invoke-direct {v2, v1}, Lcom/motorola/camera/MtkAvailableSmvrModeData;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;
    .locals 9

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v2}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v2

    iget-object v5, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v5}, Lkotlin/collections/ArraysUtilJVM;->getAspectRatio(Landroid/util/Size;)F

    move-result v5

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, p0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getHighSpeedVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/VideoFormat;

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v7}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v7

    if-le v2, v7, :cond_2

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v0, v7, :cond_2

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v7}, Lkotlin/collections/ArraysUtilJVM;->getAspectRatio(Landroid/util/Size;)F

    move-result v7

    invoke-static {v5, v7}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    if-nez v0, :cond_0

    const-string p0, "VideoHelper"

    const-string p1, "No suitable restricted video format size found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_4
    sget-object p1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    const/4 p1, -0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v1, p1

    :goto_2
    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x78

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v2, v5, :cond_5

    move v2, v7

    goto :goto_3

    :cond_5
    move v2, v6

    :goto_3
    if-eqz v2, :cond_6

    const/16 v8, 0x7d1

    goto :goto_4

    :cond_6
    move v8, v7

    :goto_4
    invoke-static {v1, v8}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackMainCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move v1, p1

    :cond_8
    const/4 p1, 0x2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED_SMVR:Landroid/util/Range;

    goto :goto_6

    :cond_9
    sget-object v2, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    :goto_6
    invoke-static {v0, v1, v2, p1}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v2

    goto :goto_7

    :cond_a
    move-object v2, v4

    :goto_7
    if-nez v2, :cond_b

    sget-object v2, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    invoke-static {v0, v1, v2, p1}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_c

    return-object v4

    :cond_c
    new-instance v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v4, v2, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    invoke-virtual {v8, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v4, :cond_e

    iget v4, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-lt v4, v5, :cond_d

    goto :goto_8

    :cond_d
    move v4, v6

    goto :goto_9

    :cond_e
    :goto_8
    move v4, v7

    :goto_9
    if-eqz v4, :cond_f

    iget v4, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v4, v4

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Landroid/media/CamcorderProfile;F)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v2

    iget-object v4, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    if-ne v3, p0, :cond_10

    if-nez v2, :cond_10

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x1e

    const v5, 0x2ee00

    div-int/2addr v5, v3

    iput v5, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    iget-object v3, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x1e

    iget v5, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    div-int/2addr v5, v3

    iput v5, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    :cond_10
    new-instance v3, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {v3, v5, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iput-object v0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    const/16 v3, 0xd

    if-ne v3, p0, :cond_11

    iput v6, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ge p0, v0, :cond_11

    const/16 p0, 0xf

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_11

    iput-object p0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    :cond_11
    if-eqz v2, :cond_13

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    iget-object v3, v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mVideoSize:Landroid/util/Size;

    iget-object v4, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget v2, v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mMaxFps:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance p0, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    int-to-float p0, v2

    iput p0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    :cond_13
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->HEVC_FOR_ALL_RESOLUTIONS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_14

    iput v3, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    goto :goto_d

    :cond_14
    sget-object v2, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    iget-object v4, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    iget-object v4, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_b

    :cond_15
    if-eqz p0, :cond_16

    move p1, v3

    :cond_16
    iput p1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iget-object p1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget v0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result p0

    goto :goto_c

    :cond_17
    :goto_b
    if-eqz p0, :cond_18

    if-eqz v0, :cond_18

    move p1, v3

    :cond_18
    iput p1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    if-eqz p0, :cond_19

    if-eqz v0, :cond_19

    move v6, v7

    :cond_19
    iget-object p0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget p1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-static {v6, p0, p1}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result p0

    :goto_c
    iput p0, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    :goto_d
    return-object v1
.end method

.method public static getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v0

    new-instance v1, Lcom/motorola/camera/VideoFormat;

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iget-boolean v0, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-direct {v1, p0, v2, v0}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    move-object p0, v1

    :cond_0
    return-object p0
.end method

.method public static getSnapshotSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;
    .locals 6

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->IS_LIVESHOT_SIZE_SAME_AS_VIDEO_SIZE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/camera/VideoHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-virtual {v1, v0}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getJpegPictureSizes(Lcom/motorola/camera/settings/CameraType;)[Landroid/util/Size;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    invoke-static {v0}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v4

    invoke-static {v3}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-static {p0}, Lkotlin/collections/ArraysUtilJVM;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v4

    invoke-static {v3}, Lkotlin/collections/ArraysUtilJVM;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v5

    invoke-static {v4, v5}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSupportedByCurrentCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v4

    invoke-static {v3}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v5

    if-ge v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static getSpan(Landroid/util/Range;)I
    .locals 1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static getSuperSlowMotionBaseFrameRate()I
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x78

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x3c0

    rem-int/2addr v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getSupportedVideoSnapshotSizes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    iget-object v2, v2, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v2, p0}, Lcom/motorola/camera/VideoHelper;->getSnapshotSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static isNotificationPermissionRequired()Z
    .locals 4

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isPhotosStabilizationSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    monitor-exit v0

    if-eqz v3, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->NOTIFICATION_PERMISSION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_1
    return v1
.end method

.method public static isSameFrameRateUpper(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/VideoFormat;->VIDEO_RESOLUTIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSnapshotSupportInConfigurations()Z
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_CONFIGURATIONS_INFO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_CONFIGURATIONS_TABLE_SIZE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v3, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Lcom/motorola/camera/Util;->getSplitList(ILjava/util/List;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/motorola/camera/VideoConfigurationsInfo;

    invoke-direct {v5, v3, v4}, Lcom/motorola/camera/VideoConfigurationsInfo;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoConfigurationsInfo;

    iget v5, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v6, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v4, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isSuperSlowMotionFrameRate(I)Z
    .locals 1

    const/16 v0, 0x3c0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static muteNotifications(Z)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p0, :cond_2

    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "scheme"

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "app"

    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "application"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120035

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v6

    new-instance v4, Landroid/content/ComponentName;

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/motorola/camera/Camera;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/app/AutomaticZenRule;

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f1204bb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/service/notification/Condition;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1204ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Landroid/service/notification/Condition;

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v5, v4, v1, v6}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v5}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static requestAudioFocus(Z)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    return-void
.end method
