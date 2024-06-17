.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final watermarkFileCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;

    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->watermarkFileCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 5

    const-string v0, "super.finalize() thrown : "

    const-string v1, "WatermarkEditorService"

    const-string v2, "finalize() thrown : "

    :try_start_0
    sget-object v3, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->watermarkFileCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v2, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_5
    sget v4, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception p0

    sget v3, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    throw v2
.end method
