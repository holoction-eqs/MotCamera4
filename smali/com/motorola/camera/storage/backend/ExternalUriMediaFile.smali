.class public Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/storage/MediaFile;


# instance fields
.field public final externalUri:Landroid/net/Uri;

.field public isFinished:Z

.field public writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;
    .locals 1

    instance-of v0, p0, Lcom/motorola/camera/storage/SharedMediaFile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/storage/SharedMediaFile;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public delete()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_2
    iput-object v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    throw v1
.end method

.method public final finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getWriteFd()I
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "rw"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    return p0

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

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const-string v0, "rw"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const-string v0, "getWriteParcelFileDescriptor().fileDescriptor"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

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

    iget-boolean p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    return p0
.end method

.method public openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    const-string v0, "Failed to open "

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    :try_start_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

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

.method public final openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    if-eqz v0, :cond_0

    const-string v0, "r"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->openFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is false"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 8

    new-instance v7, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    iget-object v1, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExternalUriMediaFile(externalUri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->externalUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", isFinished="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", writeParcelFileDescriptor="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
