.class public final Lcom/motorola/camera/service/CameraForegroundServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBgJobListener:Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

.field public final mClientVotes:Ljava/util/HashMap;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    invoke-direct {v0}, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mBgJobListener:Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;

    iget-object v1, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v6, v2, v7}, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_1
    invoke-static {}, Lcom/motorola/camera/service/CameraForegroundServiceManager;->shouldUseCameraForegroundService()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v5, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    :goto_1
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Client not found: "

    sget-object v1, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;

    iget-object v2, v1, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    const-string v1, "CameraForegroundServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_3

    iget-object v0, v1, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/service/CameraForegroundServiceManager;->stopJms()V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/service/CameraForegroundServiceManager;->shouldUseCameraForegroundService()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/motorola/camera/service/CameraForegroundServiceManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mClientVotes:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static shouldUseCameraForegroundService()Z
    .locals 3

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_REPROC:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AUTO_ENHANCE:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public final stopJms()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundServiceManager;->mBgJobListener:Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Landroidx/work/Worker$1;

    new-instance v2, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/16 v0, 0x1b

    invoke-direct {v1, v2, v0}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
