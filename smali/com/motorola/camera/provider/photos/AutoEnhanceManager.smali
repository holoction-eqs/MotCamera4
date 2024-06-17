.class public final Lcom/motorola/camera/provider/photos/AutoEnhanceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BG_PROCESSING_LIMIT:I


# instance fields
.field public isSupported:Ljava/lang/Boolean;

.field public mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

.field public final mSeqIdProcessingSet:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    return-void
.end method

.method public static applyEnhance(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8

    const-string v0, "AutoEnhanceManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v2, p2}, Lcom/motorola/camera/Util;->writeFile(Ljava/io/File;Ljava/nio/ByteBuffer;)V

    new-instance p2, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const/4 v4, 0x0

    invoke-direct {p2, v2, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    invoke-interface {v4, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v5, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v5, p1}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    const-string p1, "_ENHANCED"

    invoke-virtual {v5, p1}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v6, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7}, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;-><init>(Ljava/io/File;Z)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->applyEnhance(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v5, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object v5, p1

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_0

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    move-object v3, v2

    goto :goto_2

    :catch_4
    move-exception p0

    move-object v2, v1

    :goto_0
    move-object p1, v1

    move-object v3, p1

    move-object v5, v3

    :goto_1
    :try_start_5
    const-string p2, "Failed to Auto Enhance the image with error: "

    invoke-static {v0, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_0
    invoke-static {v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    const-string p0, "Failed to Auto Enhance the image"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_4
    move-exception p0

    move-object v1, v5

    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->revokeAccess(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    throw p0
.end method

.method public static declared-synchronized isSupported()Z
    .locals 7

    const-class v0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v2, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-nez v2, :cond_0

    new-instance v2, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-direct {v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;-><init>(Lcom/motorola/camera/CameraApp;)V

    iput-object v2, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    :goto_0
    const-string v6, "getVersion"

    invoke-virtual {v2, v4, v6, v5}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->callContentResolver(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    const/4 v4, 0x4

    if-lt v2, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    const-string v4, "AutoEnhanceManager"

    const-string v5, "isSupported"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/lang/Boolean;

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_4
    :goto_3
    sget-object v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v1, v1, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
