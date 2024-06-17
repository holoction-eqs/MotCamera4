.class public final Lcom/motorola/camera/service/JmsServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public jmsReady:Ljava/util/concurrent/CountDownLatch;

.field public final lock:Ljava/lang/Object;

.field public mBgBindPending:Z

.field public mBgService:Ljms/IJobMgrService;

.field public mBgServiceBound:Z

.field public final mBgServiceClientId:I

.field public final mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v0, "JmsServiceInterface"

    sput-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v0, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iput v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/service/JmsServiceInterface$1;-><init>(Lcom/motorola/camera/service/JmsServiceInterface;)V

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v7, 0x0

    const-string v3, "JmsInterface"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;

    move-object v1, v0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isServiceBounded()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startAndBindJMS()Z
    .locals 8

    const-string v0, "startAndBindJMS ignored, enabled = "

    iget-object v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return v3

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    if-nez v5, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    const-class v4, Lcom/motorola/camera/background/service/jms/JobMgrService;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-nez v4, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3

    move v0, v3

    :cond_3
    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " bounded = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    monitor-exit v1

    return v3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2
.end method

.method public final startAndBindJMSSync()V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    const/16 v1, 0x1388

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind to JMS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    return-void
.end method
