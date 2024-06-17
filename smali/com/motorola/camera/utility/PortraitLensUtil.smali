.class public abstract Lcom/motorola/camera/utility/PortraitLensUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final focalSegmentsMap:Ljava/util/EnumMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-class v0, Lcom/motorola/camera/utility/PortraitLensUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    if-eqz v1, :cond_2

    const-string v1, "zoomValues"

    iget-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensZoomValue:[F

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cameraTypes"

    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v2

    array-length v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v1, :cond_1

    aget v8, v2, v6

    aget-object v9, v3, v6

    sget-object v10, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v11

    aget-object v11, v11, v7

    new-instance v12, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    if-eq v9, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v5

    :goto_1
    const-string v14, "cameraType"

    invoke-static {v9, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensBlurLevel:[I

    aget v14, v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v9, v8, v14}, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;-><init>(ZLcom/motorola/camera/settings/CameraType;FLjava/lang/Integer;)V

    invoke-virtual {v10, v11, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public static final getCameraType(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/settings/CameraType;
    .locals 1

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    :cond_1
    return-object p0
.end method

.method public static final getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F
    .locals 1

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public static final hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
    .locals 2

    const-string v0, "zoomSegment"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    :cond_3
    :goto_0
    return-object v0
.end method
