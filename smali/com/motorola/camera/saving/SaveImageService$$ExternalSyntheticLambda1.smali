.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/FileName;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;


# direct methods
.method public synthetic constructor <init>(IIIJLcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Lcom/motorola/camera/saving/FileName;Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/saving/FileName;

    iput-object p8, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput-boolean p9, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$2:Z

    iput-wide p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$3:J

    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$4:I

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$5:I

    iput p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$6:I

    iput-object p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-boolean v13, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$2:Z

    iget-wide v6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$3:J

    iget v10, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$4:I

    iget v11, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$5:I

    iget v12, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$6:I

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v2

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;->f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v1, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v1

    iget-object v0, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, v14, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingComplete(Lcom/motorola/camera/CameraData;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingFailed()V

    :goto_0
    return-void
.end method
