.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/DocJpegHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/motorola/camera/CameraData;

.field public final synthetic f$3:Landroid/app/Activity;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLcom/motorola/camera/CameraData;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/CameraData;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$3:Landroid/app/Activity;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-boolean v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/CameraData;

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$3:Landroid/app/Activity;

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    const-string v0, "ImageLength"

    const-string v6, "ImageWidth"

    const-string v7, "SaveImageService"

    iget v8, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    sget-object v9, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v9, v11, :cond_1

    if-eq v9, v10, :cond_0

    iget-object v9, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v9, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v9, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    :goto_0
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v14

    invoke-virtual {v9, v13, v14, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    :try_start_0
    iget-object v14, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropUri:Landroid/net/Uri;

    if-nez v14, :cond_2

    move v14, v11

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_3

    iget-object v14, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    goto :goto_2

    :cond_3
    iget-object v14, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    :goto_2
    new-instance v15, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v11, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-virtual {v11, v6, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v0, v0

    const/16 v6, 0x5a

    if-eq v0, v6, :cond_6

    const/16 v6, 0xb4

    if-eq v0, v6, :cond_5

    const/16 v6, 0x10e

    if-eq v0, v6, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0x8

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    const/4 v0, 0x6

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Orientation"

    invoke-virtual {v11, v6, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V

    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v10, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    :goto_4
    const-string v15, ";"

    if-ge v14, v10, :cond_8

    :try_start_1
    aget v13, v0, v14

    float-to-int v13, v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v11, v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v11, v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    invoke-virtual {v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process failed to write exif of document: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v2, :cond_9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_7

    :cond_9
    new-instance v6, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v6}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v8, "http://ns.google.com/photos/1.0/document/"

    iget-object v10, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v10, :cond_a

    sget-object v10, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    new-instance v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v10, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_a
    iget-object v10, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v10, :cond_b

    sget-object v10, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    new-instance v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v10}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v10, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_b
    iget-object v10, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    iget-object v11, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    const/4 v12, 0x0

    :try_start_3
    const-string v13, "Data"

    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v11, v8, v13, v0, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v11, "image/jpeg"

    check-cast v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v10, v8, v0, v11, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v8, "XmpData"

    const-string v10, "can\'t embed document data"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    iget-object v8, v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    invoke-direct {v0, v8, v12, v12, v12}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v0}, Lcom/motorola/camera/saving/XmpData;->add(Landroidx/work/WorkQuery;)V

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_7
    if-eqz v2, :cond_c

    :try_start_4
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/CameraData;I)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Lcom/motorola/camera/saving/SaveImageService$1;

    sget-object v8, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v8, v8, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    invoke-direct {v6, v8, v4, v3}, Lcom/motorola/camera/saving/SaveImageService$1;-><init>(Landroid/os/Handler;Landroid/app/Activity;Lcom/motorola/camera/CameraData;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v6, v8, v9, v1}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V

    invoke-static {v2}, Lkotlin/UNINITIALIZED_VALUE;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->update(Landroid/content/ContentValues;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save document jpeg failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    goto :goto_9

    :goto_8
    instance-of v1, v0, Landroid/app/RecoverableSecurityException;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/app/RecoverableSecurityException;

    invoke-virtual {v0}, Landroid/app/RecoverableSecurityException;->getUserAction()Landroid/app/RemoteAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    const/16 v6, 0x65

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_5
    invoke-virtual/range {v4 .. v11}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :goto_9
    return-void

    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_a
    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
