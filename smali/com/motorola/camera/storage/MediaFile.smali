.class public interface abstract Lcom/motorola/camera/storage/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;
    .locals 1

    const-string v0, "mediaFilePath"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    return-object v0
.end method

.method public static fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;
    .locals 0

    invoke-static {p0}, Lkotlin/UNINITIALIZED_VALUE;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;
.end method

.method public abstract asTemporaryFileMediaFile()Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
.end method

.method public abstract delete()V
.end method

.method public abstract finish()V
.end method

.method public abstract getFileUri()Landroid/net/Uri;
.end method

.method public abstract getWriteFd()I
.end method

.method public abstract getWriteFileDescriptor()Ljava/io/FileDescriptor;
.end method

.method public abstract isFinished()Z
.end method

.method public abstract openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
.end method
