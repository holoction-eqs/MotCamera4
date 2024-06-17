.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;
.super Ljms/IJobMgrService$Stub;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/motorola/camera/settings/CacheBehavior;

.field public static final TAG:Ljava/lang/String;

.field public static final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

.field public final context:Landroid/content/Context;

.field public final mClientMap:Ljava/util/LinkedHashMap;

.field public final mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mProduct:Ljava/lang/String;

.field public final mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public mSchedulerMsgChannel:Lkotlinx/coroutines/channels/SendChannel;

.field public mState:I

.field public mStaticConfig:[B

.field public final messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/settings/CacheBehavior;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/settings/CacheBehavior;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->PROCESS_MANAGER_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrService;)V
    .locals 3

    const-string v0, "serviceHandle"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljms/IJobMgrService$Stub;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    const/4 p2, 0x2

    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-direct {p2, p0, v0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/RegisteredProcDef;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    new-instance p1, Lcom/motorola/camera/background/common/SimpleWatchDog;

    new-instance p2, Landroidx/work/Worker$1;

    const/16 v0, 0x16

    invoke-direct {p2, p0, v0}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    const-string v0, "JMS Watchdog"

    const-wide/16 v1, 0x7530

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/motorola/camera/background/common/SimpleWatchDog;-><init>(Ljava/lang/String;JLjava/lang/Runnable;)V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    return-void
.end method

.method public static final access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    iget-object v3, v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v3, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    sget-object v4, Lcom/motorola/camera/background/common/ClientType;->COPROC:Lcom/motorola/camera/background/common/ClientType;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isMsgTypeSupported(Lcom/motorola/camera/background/common/msg/MsgType;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findValidCoProc: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".id does not support "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method


# virtual methods
.method public final cancelKeepAliveJob()V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/work/multiprocess/RemoteWorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/multiprocess/RemoteWorkManager;

    move-result-object p0

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    const/16 v1, 0x8

    const-string v2, "JobMgrKeepAliveJob"

    invoke-direct {v0, p0, v2, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteClientUtils;->sVoidMapper:Landroidx/work/InputMergerFactory$1;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-static {v0, v1, p0}, Landroidx/work/multiprocess/RemoteClientUtils;->map(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/work/impl/utils/futures/SettableFuture;

    return-void
.end method

.method public final checkWatchDog()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/motorola/camera/background/common/SimpleWatchDog;->isTimerCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/motorola/camera/background/common/SimpleWatchDog;

    new-instance v1, Landroidx/work/Worker$1;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    const-string v2, "JMS Watchdog"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/motorola/camera/background/common/SimpleWatchDog;-><init>(Ljava/lang/String;JLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->reset()V

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->scheduleKeepAliveJob()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final cleanUp()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->cleanUp()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized deinitialize()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->cancel()V

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->actvityWatchdog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->timerCancel()V

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    :cond_0
    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->cancelKeepAliveJob()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->deinitialize()V

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->deinitializeCoProcs()V

    iput v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "deinitialize: service already deinitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final deinitializeCoProcs()V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->stop()V

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eq v3, v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deinitializeCoProcs, deinit count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPid()I
    .locals 0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticConfig"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mProduct:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mStaticConfig:[B

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->scheduleKeepAliveJob()V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->initialize()V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mSchedulerMsgChannel:Lkotlinx/coroutines/channels/SendChannel;

    iput v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mProduct:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mStaticConfig:[B

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getBgServiceMlModels()Landroid/os/Bundle;

    move-result-object p2

    sget-object v2, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    sget-object v2, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {p0, v2, p1, v0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->registerCoProc(Lcom/motorola/camera/background/common/RegisteredProcDef;Ljava/lang/String;[BLandroid/os/Bundle;)V

    sget-object v2, Lcom/motorola/camera/background/common/RegisteredProcDef;->SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {p0, v2, p1, v0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->registerCoProc(Lcom/motorola/camera/background/common/RegisteredProcDef;Ljava/lang/String;[BLandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->onStartUp()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->cancelKeepAliveJob()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-gtz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->PENDING_JOBS:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    const-string p1, "mStaticConfig"

    invoke-static {p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "mProduct"

    invoke-static {p1}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_4
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "initialize: service already initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final numPendingJobs()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "procIntf"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    sget-object v3, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;-><init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p3

    :cond_2
    :try_start_2
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "registerClient: service not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final registerCoProc(Lcom/motorola/camera/background/common/RegisteredProcDef;Ljava/lang/String;[BLandroid/os/Bundle;)V
    .locals 13

    move-object v9, p0

    move-object v10, p1

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    iget v0, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v11, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    if-ne v2, v10, :cond_0

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerCoproc: Invalid coproc "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v12, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    iget-object v2, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    sget-object v4, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v5, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    invoke-direct {v5, p0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;-><init>(Ljava/lang/Object;I)V

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;Ljava/lang/String;[BLandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-instance v12, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;

    iget-object v2, v9, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    sget-object v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v4, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;-><init>(Ljava/lang/Object;I)V

    move-object v0, v12

    move-object v1, v2

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;Ljms/IJobMgrService;)V

    :goto_0
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v1

    invoke-direct {v0, p1, v1, v12}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;-><init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)V

    invoke-virtual {v11, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start()Z

    return-void

    :cond_4
    const-string v0, "registerCoProc: service not initialized"

    :goto_1
    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final scheduleKeepAliveJob()V
    .locals 6

    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/motorola/camera/background/service/jms/JobMgrKeepAliveJob;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeUnit"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, Landroidx/work/WorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-wide v3, v3, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/work/multiprocess/RemoteWorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/multiprocess/RemoteWorkManager;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/OneTimeWorkRequest;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroidx/work/impl/WorkContinuationImpl;

    const-string v5, "JobMgrKeepAliveJob"

    invoke-direct {v4, v1, v5, v2, v0}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;)V

    new-instance v0, Lcom/motorola/camera/device/CameraService;

    invoke-direct {v0, p0, v4, v3}, Lcom/motorola/camera/device/CameraService;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteClientUtils;->sVoidMapper:Landroidx/work/InputMergerFactory$1;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-static {v0, v1, p0}, Landroidx/work/multiprocess/RemoteClientUtils;->map(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/work/impl/utils/futures/SettableFuture;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "beginUniqueWork needs at least one OneTimeWorkRequest."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given initial delay is too large and will cause an overflow!"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized setPriority(ILcom/motorola/camera/background/common/Priority;)V
    .locals 3

    const-string v0, "setPriority: unknown id="

    monitor-enter p0

    :try_start_0
    const-string v1, "priority"

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "setPriority: service not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unregisterClient(I)V
    .locals 3

    const-string v0, "unregisterClient: unknown id="

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "unregisterClient: service not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateProgress(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iget-object p0, v1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, v1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    new-instance v6, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;

    const/4 v5, 0x0

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;IIILkotlin/coroutines/Continuation;)V

    invoke-static {v6}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
