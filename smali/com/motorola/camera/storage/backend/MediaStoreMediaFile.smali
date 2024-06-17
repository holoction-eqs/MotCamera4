.class public final Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/storage/SharedMediaFile;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isFinished:Z

.field public mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

.field public mediaItemUri:Landroid/net/Uri;

.field public mediaOrientation:I

.field public writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/dynamite/zzo;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/storage/MediaFilePath;)V
    .locals 1

    const-string v0, "mediaFilePath"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaOrientation:I

    return-void
.end method


# virtual methods
.method public final asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;
    .locals 0

    return-object p0
.end method

.method public final asTemporaryFileMediaFile()Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
    .locals 1

    instance-of v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final closeWriteParcelFileDescriptor()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    throw v1
.end method

.method public final delete()V
    .locals 7

    const-string v0, "Failed to delete (got "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->closeWriteParcelFileDescriptor()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/motorola/camera/storage/MediaStoreClient;->deleteMediaItem(Landroid/net/Uri;)I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    const/16 v0, 0x10

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->notifyChange(Landroid/net/Uri;I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "exceptions[i]"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    throw p0

    :cond_3
    return-void
.end method

.method public final ensureMediaItemIsCreatedAndOpened()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, L_COROUTINE/ArtificialStackFrames;->fromFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaType;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getEnablePending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_pending"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "mime_type"

    iget-object v3, v0, Lcom/motorola/camera/storage/MediaType;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getRelativePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "relative_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_display_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "volumeName"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v3, "getContentUri(volumeName)"

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :cond_2
    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/storage/MediaStoreClient;->MEDIA_TYPES:Ljava/util/List;

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaStoreUri(Landroid/net/Uri;)V

    new-instance v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v2}, Landroidx/transition/ViewOverlayApi14;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->notifyChange(Landroid/net/Uri;I)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to insert to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const-string v1, "rw"

    invoke-static {v0, v1}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_6

    iput-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void

    :cond_6
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finish()V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->closeWriteParcelFileDescriptor()V

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, L_COROUTINE/ArtificialStackFrames;->fromFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_pending"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "mime_type"

    iget-object v5, v0, Lcom/motorola/camera/storage/MediaType;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v4}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaOrientation:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string v5, "orientation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-static {v1, v2}, Lcom/motorola/camera/storage/MediaStoreClient;->updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->notifyChange(Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/MediaType;->getNewMediaIntents(Landroid/net/Uri;)[Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to update (got "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final getFileUri()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mediaItemUri is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMediaStoreUri()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mediaItemUri is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProcessingMediaUri()Landroid/net/Uri;
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->ensureMediaItemIsCreatedAndOpened()V

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getWriteFd()I
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->ensureMediaItemIsCreatedAndOpened()V

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "writeParcelFileDescriptor is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getWriteFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->ensureMediaItemIsCreatedAndOpened()V

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const-string v0, "getWriteParcelFileDescriptor().fileDescriptor"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "writeParcelFileDescriptor is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    return p0
.end method

.method public final notifyChange(Landroid/net/Uri;I)V
    .locals 1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    return-void
.end method

.method public final openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "r"

    invoke-static {p0, v0}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is false"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final rename(Ljava/lang/String;)V
    .locals 4

    const-string v0, "newName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, L_COROUTINE/ArtificialStackFrames;->fromFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_display_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/motorola/camera/storage/MediaStoreClient;->updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    const/16 p1, 0x8

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->notifyChange(Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/MediaType;->getNewMediaIntents(Landroid/net/Uri;)[Landroid/content/Intent;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to update (got "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "isFinished is false"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 4

    new-instance v0, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaStoreMediaFile(mediaFilePath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaItemUri="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isFinished="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", writeParcelFileDescriptor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroid/content/ContentValues;)V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->closeWriteParcelFileDescriptor()V

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, L_COROUTINE/ArtificialStackFrames;->fromFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/motorola/camera/storage/MediaStoreClient;->updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->notifyChange(Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/storage/MediaType;->getNewMediaIntents(Landroid/net/Uri;)[Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update (got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
