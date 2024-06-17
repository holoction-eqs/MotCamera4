.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ShaderCache;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "shader-cache.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->readCache(Ljava/io/File;)Landroid/util/LongSparseArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mDirty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v3

    move-object v4, v3

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mDirty:Z

    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_5

    :try_start_5
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "shader-cache.bin"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->writeCache(Ljava/io/File;Landroid/util/LongSparseArray;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
