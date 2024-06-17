.class public final Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
.super Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;
.source "SourceFile"


# instance fields
.field public final tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/saving/FileName;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;-><init>(Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final delete()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    throw p0
.end method

.method public final getFileUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    const-string v0, "Failed to open: "

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public final toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported on temporary file!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;->tempFile:Ljava/io/File;

    invoke-super {p0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TemporaryFileMediaFile(tempFile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
