.class public abstract Lcom/motorola/camera/utility/ExifUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static appendExifToJpeg([BLandroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;[B)[B
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_METADATA_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p3, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    new-instance v1, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    :cond_1
    if-eqz p2, :cond_3

    sget-object p3, Lcom/motorola/camera/mcf/McfMetadata;->JPEG_ORIENTATION:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {v0, p3}, Lcom/motorola/camera/utility/ExifUtility;->setExifOrientation(Lcom/motorola/camera/photometadata/PhotoMetadata;Ljava/lang/Integer;)V

    sget-object p3, Lcom/motorola/camera/mcf/McfMetadata;->MOTO_MAKERNOTE_BYTE_DATA:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    :cond_2
    sget-object p3, Lcom/motorola/camera/mcf/McfMetadata;->MOTO_APPX_BYTE_DATA:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setApp6ByteArray([B)V

    goto :goto_0

    :cond_3
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p2}, Lcom/motorola/camera/utility/ExifUtility;->setExifOrientation(Lcom/motorola/camera/photometadata/PhotoMetadata;Ljava/lang/Integer;)V

    :cond_4
    :goto_0
    invoke-static {v0, p1}, Lcom/motorola/camera/utility/ExifUtility;->setExifAttributes(Lcom/motorola/camera/photometadata/PhotoMetadata;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-static {v0, p1, p0, p4}, Lcom/motorola/camera/utility/ExifUtility;->setExifThumbnail(Lcom/motorola/camera/photometadata/PhotoMetadata;Landroid/hardware/camera2/TotalCaptureResult;[B[B)V

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "ExifUtility"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getJpegQuality(Ljava/lang/Byte;)I
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    return v0
.end method

.method public static setExifAttributes(Lcom/motorola/camera/photometadata/PhotoMetadata;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%f"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExposureTime"

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FNumber"

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISOSpeedRatings"

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setLocationAttributes(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ExifUtility"

    const-string v1, "failed to get JPEG_GPS_LOCATION with err: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object p1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {p1}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\\A\\p{ASCII}*\\z"

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    sget-object p1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_MANUFACTURER:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {p1}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const-string p1, "Motorola"

    :cond_7
    const-string v0, "Make"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplayPropNames()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_9
    const-string v0, "Phone"

    :goto_1
    const-string p1, "Model"

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setExifOrientation(Lcom/motorola/camera/photometadata/PhotoMetadata;Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x2d

    if-lt p1, v1, :cond_3

    const/16 v1, 0x13b

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x87

    if-ge p1, v2, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :cond_1
    const/16 v2, 0xe1

    if-ge p1, v2, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    if-ge p1, v1, :cond_3

    const/16 p1, 0x8

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Orientation"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static setExifThumbnail(Lcom/motorola/camera/photometadata/PhotoMetadata;Landroid/hardware/camera2/TotalCaptureResult;[B[B)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V

    goto :goto_1

    :cond_0
    iget-boolean p3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mHasThumbnail:Z

    if-nez p3, :cond_2

    sget-object p3, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Size;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-static {p1}, Lcom/motorola/camera/utility/ExifUtility;->getJpegQuality(Ljava/lang/Byte;)I

    move-result p1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    sget-object v1, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p2, v0, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V

    :cond_2
    :goto_1
    return-void
.end method
