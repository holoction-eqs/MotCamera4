.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

.field public final synthetic f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;ILcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iput-boolean p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$4:Z

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$5:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$2:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-boolean v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$4:Z

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$5:Lcom/motorola/camera/fsm/camera/FsmContext;

    const-string v5, "SaveImageService"

    iget v6, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$1:I

    int-to-float v7, v6

    iget-object v8, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;->f$0:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-static {v8, v7, v0, v0, v0}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v15, 0x0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v11

    if-nez v10, :cond_0

    if-eqz v11, :cond_1

    :cond_0
    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    iget-wide v13, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    move-object v9, v7

    invoke-static/range {v9 .. v14}, Lcom/motorola/camera/service/WatermarkEditorService;->addWatermarkToBitmap(Landroid/graphics/Bitmap;ZZZJ)V

    :cond_1
    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v9}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v7, v9, v11, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v9}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v0, "MediaFile is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v4, :cond_f

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_2

    :cond_4
    :try_start_2
    iget-object v11, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v11}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v11

    const-string v12, "w"

    invoke-static {v11, v12}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget v13, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode(I)Z

    move-result v13

    invoke-static {v12, v1, v13, v3}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;ZZ)V

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5
    move-object v3, v9

    check-cast v3, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v3}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->finish()V

    check-cast v9, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-object v3, v9, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v9}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v3, Lcom/motorola/camera/CameraData;

    iget-wide v12, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v9}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v14

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v9}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v26, v5

    move v9, v6

    :try_start_3
    iget-wide v5, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v9, 0x0

    :cond_6
    move/from16 v23, v9

    const/16 v24, 0x0

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-object v11, v3

    move-wide/from16 v17, v5

    move-object/from16 v25, v9

    invoke-direct/range {v11 .. v25}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIIILcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v6, "IS_PRIMARY"

    invoke-virtual {v5, v6, v0}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->commitTotalCaptureTimeKPI(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_9
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v4, :cond_f

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_2

    :cond_c
    move-object/from16 v26, v5

    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bitmap compress failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v26, v5

    :goto_0
    move-object v15, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v26, v5

    :goto_1
    :try_start_5
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v26

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    invoke-static {v15}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v4, :cond_f

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_2
    invoke-virtual {v4, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_f
    return-void

    :goto_3
    move-object v10, v15

    :goto_4
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v4, :cond_12

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_12
    throw v0
.end method
