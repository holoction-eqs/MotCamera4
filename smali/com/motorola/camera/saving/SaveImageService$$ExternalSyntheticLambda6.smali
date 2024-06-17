.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/FileName;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/FileName;Landroid/graphics/Bitmap;JLcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/saving/FileName;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Bitmap;

    iput-wide p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$2:J

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$3:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Bitmap;

    iget-wide v8, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$2:J

    iget-object v15, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$3:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v0

    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v2, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v13, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v3

    iget-object v2, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v13

    move-object/from16 v19, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move/from16 v14, v17

    move-object/from16 v17, v1

    move-object v1, v15

    move/from16 v15, v18

    :try_start_2
    invoke-direct/range {v2 .. v15}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->finish()V

    const/4 v0, 0x1

    move-object/from16 v2, v19

    invoke-static {v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1$$ExternalSyntheticLambda0;

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->COLLAGE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_2

    :cond_0
    move-object/from16 v17, v1

    move-object/from16 v16, v14

    move-object v1, v15

    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bitmap.compress() failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v16, v14

    move-object v1, v15

    :goto_0
    move-object v2, v0

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_3
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_3

    :catch_0
    move-object/from16 v17, v1

    move-object v1, v15

    :catch_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->Companion:Lkotlin/ULong$Companion;

    invoke-virtual {v0}, Lkotlin/ULong$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Collage failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->COLLAGE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v1, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$saveCollageCallback$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_4
    move-exception v0

    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method
