.class public final Lcom/motorola/camera/panorama/PanoSaveCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/panorama/PanoListener;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    new-instance p2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {p2, p1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    return-void
.end method

.method public static createMosaic()Landroid/graphics/YuvImage;
    .locals 9

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v2, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v1, "MorphoEngine"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "mMorphoPanoramaGP3.getClippingRect error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int v2, v5, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v7, v2, [B

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v2, v7, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getOutputImage([BLandroid/graphics/Rect;)I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    const-string v2, "MorphoEngine"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "mMorphoPanoramaGP3.getOutputImage error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const-string v0, "PanoSaveCallable"

    const-string v1, "getOutputImage() returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to generate image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static postProcessMosaic(Landroid/graphics/YuvImage;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "PANO_IMAGE_WIDTH"

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "PANO_IMAGE_HEIGHT"

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 17

    const-string v1, "SAVE_TIME"

    const-string v2, "PROCESSING_SAVE_TIME"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "PANO_SAVE_OUTPUT_BY_ENGINE"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v8, "PANO_CANCELED"

    const-string v9, "PanoSaveCallable"

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [I

    iget-object v10, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v10}, Lcom/motorola/camera/storage/MediaFile;->getWriteFd()I

    move-result v10

    const/16 v11, 0x9

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v11

    sget-object v13, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v6

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    invoke-virtual {v11, v10, v13}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->saveJpeg(II)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v11

    invoke-virtual {v11, v10, v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->saveOutputImage(I[I)Z

    move-result v10

    if-eqz v10, :cond_2

    :goto_1
    new-instance v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v8, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "PANO_IMAGE_WIDTH"

    aget v11, v0, v12

    invoke-virtual {v9, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "PANO_IMAGE_HEIGHT"

    aget v0, v0, v6

    invoke-virtual {v9, v10, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v8}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v7, v8

    goto/16 :goto_4

    :cond_2
    :try_start_3
    const-string v0, "Error saving Panorama image or operation was cancelled"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Error saving Panorama image"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v1, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-object v0

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/panorama/PanoSaveCallable;->createMosaic()Landroid/graphics/YuvImage;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/motorola/camera/panorama/PanoSaveCallable;->postProcessMosaic(Landroid/graphics/YuvImage;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_2
    :try_start_5
    new-instance v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;-><init>()V

    :goto_2
    iget-boolean v10, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->isValid:Z

    if-eqz v10, :cond_4

    new-instance v8, Lcom/motorola/camera/saving/ImageDataHolder;

    iget-object v9, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->data:[B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    iget v13, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->width:I

    iget v14, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->height:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(Ljava/nio/ByteBuffer;IILjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    new-instance v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {v9, v3, v0, v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v9}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v8, v9

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, v7}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v8, v9

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v7, v9

    goto :goto_4

    :cond_4
    :try_start_7
    const-string v0, "Error creating hi res Mosaic image or operation was cancelled"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Error creating hi res image"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v1, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :goto_4
    :try_start_8
    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v8}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "PANO_FAILURE"

    invoke-virtual {v8, v9, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v6, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v6, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-nez v7, :cond_5

    new-instance v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v7, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :cond_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-object v6

    :goto_5
    move-object v8, v7

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-nez v8, :cond_6

    new-instance v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v8, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :cond_6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoSaveCallable"

    return-object p0
.end method
