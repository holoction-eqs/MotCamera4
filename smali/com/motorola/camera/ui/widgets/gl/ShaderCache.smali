.class public final Lcom/motorola/camera/ui/widgets/gl/ShaderCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sInstance:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;


# instance fields
.field public final mCache:Landroid/util/LongSparseArray;

.field public mDirty:Z

.field public final mFileLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mFileLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mDirty:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->sInstance:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;-><init>()V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->sInstance:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->sInstance:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static readCache(Ljava/io/File;)Landroid/util/LongSparseArray;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const/16 v2, 0x195

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const v4, 0x55d71eb

    const/4 v5, 0x0

    if-ne v4, p0, :cond_0

    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v5

    :goto_0
    if-eqz p0, :cond_3

    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    invoke-direct {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version mismatch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    move-object v1, v0

    :catch_1
    :cond_3
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static writeCache(Ljava/io/File;Landroid/util/LongSparseArray;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-lez p0, :cond_1

    const/16 v3, 0x195

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v3, 0x55d71eb

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->-$$Nest$mwrite(Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v0
.end method
