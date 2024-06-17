.class public Lcom/motorola/camera/mcfcache/McfCacheSerializerWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public final mCachePathDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mcfcache/McfCacheSerializerWorker;->mCachePathDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    const-string v0, "McfCacheSerializerWorker"

    :try_start_0
    const-string v1, "Starting mcf cache serialization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->loadMcfJni()V

    new-instance v1, Lcom/motorola/camera/mcfcache/McfCacheSerializer;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznx;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;

    iget-object p0, p0, Lcom/motorola/camera/mcfcache/McfCacheSerializerWorker;->mCachePathDir:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/mcfcache/McfCacheSerializer;-><init>(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->serializeTFLiteModels()V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/mcfcache/McfCacheSerializer;->serializeWrappers(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    const-string p0, "Mcf cache serialization completed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Landroidx/work/ListenableWorker$Result$Success;

    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {p0, v0}, Landroidx/work/ListenableWorker$Result$Success;-><init>(Landroidx/work/Data;)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {p0, v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>(Landroidx/work/Data;)V

    return-object p0
.end method
