.class public final Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final mWideSelfieCaptureListener:Lcom/motorola/camera/PermissionCallback;

.field public final mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;Lcom/motorola/camera/PermissionCallback;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    iput-object p1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iput-object p3, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/PermissionCallback;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    array-length v4, v0

    iget-boolean v5, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v2, v3, v4, v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFaceRect(II[Landroid/graphics/Rect;)I

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    const/4 v9, 0x3

    new-array v8, v9, [I

    iget-object v2, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/PermissionCallback;

    iget-object v2, v2, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    mul-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    new-array v11, v3, [B

    const/4 v12, 0x0

    const/16 v13, 0x5a

    const/16 v14, 0xb4

    if-eqz v0, :cond_3

    if-eq v0, v14, :cond_3

    if-ne v0, v13, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v12, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget-object v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    check-cast v3, [B

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-boolean v6, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    move v6, v0

    move-object v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/lenovo/core/LenovoPanoramaSelfie;->pictureRotate([BIII[B[I)V

    :goto_2
    iget-object v2, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    if-eqz v0, :cond_7

    if-ne v0, v14, :cond_5

    goto :goto_3

    :cond_5
    if-eq v0, v13, :cond_6

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_8

    :cond_6
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v4

    goto :goto_4

    :cond_7
    :goto_3
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v4

    :goto_4
    invoke-virtual {v0, v2, v4}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->setFullImageSize(II)V

    :cond_8
    new-array v2, v3, [I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v5, "IOException when read file "

    const-string v6, "File not found "

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aget v0, v0, v12

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aget v7, v7, v3

    if-eqz v0, :cond_e

    if-nez v7, :cond_9

    goto/16 :goto_a

    :cond_9
    const-string v8, "PanoSelfie"

    invoke-static {v8}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    const-string v10, "PanoHelper"

    if-nez v8, :cond_a

    const-string v0, "dumpPanoSelfieInputImage: directory is null"

    goto :goto_5

    :cond_a
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_b

    const-string v0, "Failed to create bitmap"

    :goto_5
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_b
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v13

    iget-object v13, v13, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0, v11, v13, v7}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/motorola/camera/panorama/PanoHelper;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v7, v0, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    :goto_6
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    :goto_7
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_a

    :goto_9
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_e
    :goto_a
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v3

    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    monitor-enter v3

    :try_start_4
    iget-boolean v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v5, :cond_f

    goto :goto_b

    :cond_f
    iget v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    aput v5, v2, v12

    iget-object v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v5, v11, v0, v6, v4}, Lcom/lenovo/core/LenovoPanoramaSelfie;->imageStitchingYUV([BIII)V

    :goto_b
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/PermissionCallback;

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v3}, Lcom/lenovo/core/LenovoPanoramaSelfie;->getImageStitchingStatus()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v9, v3, :cond_10

    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v6, 0x7f1200da

    invoke-direct {v5, v6}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v6, 0x4

    iput v6, v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_10
    iget-object v0, v1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/PermissionCallback;

    aget v1, v2, v12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v1, v9, :cond_11

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_11
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
