.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final coProcActors:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public mCoProcThreadIndexCount:I

.field public final mCoprcMaxThreads:I

.field public final mCoprocRoutineMap:Ljava/util/LinkedHashMap;

.field public final mCoroutineJob:Lkotlinx/coroutines/JobImpl;

.field public mExecutorActor:Lkotlinx/coroutines/channels/SendChannel;

.field public final mJobChannelCapacity:I

.field public mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

.field public final parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/RegisteredProcDef;Landroid/content/Context;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const/4 p2, 0x3

    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprcMaxThreads:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    const/16 p2, 0x64

    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobChannelCapacity:I

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    return-void
.end method

.method public static final access$getCoProcCoroutineIndex(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprocRoutineMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    iget v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprcMaxThreads:I

    rem-int v3, v1, v2

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoProcThreadIndexCount:I

    if-lt v1, v2, :cond_3

    sget-object p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string v1, "getCoProcCoroutineIndex: Using more than expected number of coroutines "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final callProcessMsg(IILcom/motorola/camera/background/common/msg/MsgParameters;)V
    .locals 6

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v0, p0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v4, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v3, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v5, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    iget-object v2, p3, Lcom/motorola/camera/background/common/msg/MsgParameters;->retCode:Lcom/motorola/camera/background/common/ReturnCode;

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "callProcessMsg, dead object for remote "

    invoke-static {p1, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V
    .locals 2

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;-><init>(Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final deinitialize()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/JobImpl;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/SendChannel;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p0

    invoke-interface {p0, v1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    const-string p0, "mWorkerActor"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    return-object p0
.end method

.method public final getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mExecutorActor:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mExecutorActor"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final initialize()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/background/service/jms/JobDatabase;-><init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;)V

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iget v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobChannelCapacity:I

    invoke-static {p0, v0, v3, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/JobImpl;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ActorCoroutine;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mExecutorActor:Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, v3, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/JobImpl;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ActorCoroutine;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    const/4 v1, 0x1

    iget v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mCoprcMaxThreads:I

    if-gt v1, v3, :cond_1

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    new-instance v5, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;

    invoke-direct {v5, p0, v2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x0

    invoke-static {p0, v0, v6, v5}, Lkotlinx/coroutines/CoroutineScopeKt;->actor$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/JobImpl;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ActorCoroutine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStartUp()I
    .locals 15

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    if-eqz v1, :cond_7

    sget-object v2, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v10, "time_out"

    const-string v11, "id"

    const-string v12, "uri"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v6

    sget-boolean v4, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v7

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_6

    :cond_4
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->$r8$clinit:I

    const-wide/16 v8, 0x0

    invoke-static {v4, v10, v8, v9}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v5, v13, v2

    if-gez v5, :cond_5

    move v5, v6

    goto :goto_5

    :cond_5
    move v5, v7

    :goto_5
    if-eqz v5, :cond_4

    invoke-static {v4, v11, v8, v9}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/motorola/camera/background/provider/FileDataContract;->getContentUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v12}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperStr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "parse(getColumnUriValue(cursor))"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_6
    :goto_6
    invoke-static {v4, v0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :goto_8
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->scheduleUnfinishedJobRequest(JLjava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public final processControlMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v1, v0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget v0, v0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "executorActor: Invalid msg: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object v0, p2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, v0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->mCancelPending:Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_3

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_barcode/zzni;)V

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final processRequestMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Boolean;
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v9, :cond_9

    monitor-enter v9

    :try_start_0
    const-string v2, "newJob"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iget-object v2, v9, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v11, v2, v9}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v13, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sget v5, Lcom/motorola/camera/background/service/jms/db/Transaction;->$r8$clinit:I

    const-wide/16 v43, 0x0

    cmp-long v5, v3, v43

    if-lez v5, :cond_0

    sget-wide v5, Lcom/motorola/camera/background/service/jms/db/Transaction;->DEFAULT_TIMEOUT_MS:J

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    move-wide/from16 v39, v5

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    move-wide/from16 v39, v2

    :goto_0
    iget-wide v7, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->timeStamp:J

    iget-object v2, v11, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    iget-object v2, v2, Lcom/tinder/StateMachine;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "stateRef.get()"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    sget v12, Lcom/motorola/camera/background/service/jms/JobDatabase;->DEFAULT_NUM_RETRIES:I

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v16, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move-object v3, v15

    move-object v4, v9

    move-wide v5, v13

    move-wide/from16 v18, v7

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getJob$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/motorola/camera/background/service/jms/JobDatabase;JLkotlin/coroutines/Continuation;)V

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lcom/motorola/camera/background/service/jms/db/Transaction;

    const/16 v16, -0x1

    const-wide/16 v20, -0x1

    if-eqz v15, :cond_3

    iget v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retrySource:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-wide v2, v15, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    move-wide v4, v2

    move/from16 v42, v12

    goto :goto_2

    :cond_1
    iget v2, v15, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    add-int/lit8 v12, v2, -0x1

    iput v12, v15, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v17, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;

    const/16 v22, 0x0

    move-object/from16 v2, v17

    move-object v3, v9

    move-wide v4, v13

    move v6, v12

    move-object v7, v8

    move-object v10, v8

    move-object/from16 v8, v22

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v17 .. v17}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-boolean v2, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object v15, v3

    :goto_1
    move/from16 v42, v12

    move-wide/from16 v4, v20

    goto :goto_3

    :cond_3
    move/from16 v42, v12

    move-wide/from16 v4, v20

    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v15, :cond_5

    cmp-long v3, v4, v43

    if-ltz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v47, v9

    move-object/from16 v46, v11

    move-wide/from16 v48, v13

    goto/16 :goto_7

    :cond_5
    :goto_4
    new-instance v45, Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget v3, v2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget v6, v2, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v7, v2, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    move-object/from16 v46, v11

    iget-wide v10, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v47, v9

    :try_start_1
    iget-wide v8, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget v12, v2, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget-boolean v15, v2, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-object v2, v2, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move/from16 v17, v12

    iget-object v12, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v28, v12

    goto :goto_5

    :cond_6
    move/from16 v28, v16

    :goto_5
    iget-object v12, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget v12, v12, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    move/from16 v16, v15

    iget-object v15, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    sget-object v20, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v32

    move/from16 v21, v12

    iget-object v12, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget v12, v12, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    move-object/from16 v22, v15

    iget-object v15, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v36

    const/16 v41, 0x1

    const/16 v20, 0x0

    move-object/from16 v35, v15

    move/from16 v26, v16

    move-object/from16 v31, v22

    move/from16 v15, v20

    move/from16 v34, v12

    move/from16 v25, v17

    move/from16 v30, v21

    move-object/from16 v12, v45

    move-wide/from16 v48, v13

    move-wide/from16 v16, v18

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v7

    move-wide/from16 v21, v10

    move-wide/from16 v23, v8

    move-object/from16 v27, v2

    move/from16 v29, p1

    move/from16 v33, p1

    invoke-direct/range {v12 .. v42}, Lcom/motorola/camera/background/service/jms/db/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V

    cmp-long v2, v4, v43

    if-ltz v2, :cond_7

    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v10, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;

    const/4 v8, 0x0

    move-object v2, v10

    move-object/from16 v3, v47

    move-object/from16 v6, v45

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v10}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-boolean v2, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_6

    :cond_7
    new-instance v8, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;

    const/4 v7, 0x0

    move-object v2, v8

    move-object/from16 v3, v47

    move-wide/from16 v4, v48

    move-object/from16 v6, v45

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v15, v45

    :goto_7
    if-eqz v2, :cond_8

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v4, v47

    :try_start_2
    iget-object v5, v4, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    move-object/from16 v7, v46

    invoke-direct {v6, v15, v7}, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;-><init>(Lcom/motorola/camera/background/service/jms/db/Transaction;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v4, v47

    goto :goto_9

    :cond_8
    move-object/from16 v4, v47

    :goto_8
    monitor-exit v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move v10, v3

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v4, v9

    :goto_9
    monitor-exit v4

    throw v0

    :cond_9
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_d

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v2, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v4, :cond_a

    new-instance v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    move/from16 v6, p1

    invoke-direct {v5, v6, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {v4, v2, v3, v5}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_barcode/zzni;)V

    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v1, v10}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final processResultMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;J)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;-><init>(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V

    invoke-virtual {p0, p3, p4, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_barcode/zzni;)V

    goto :goto_1

    :cond_1
    const-string p0, "Invalid caller: not registered "

    invoke-static {p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final scheduleUnfinishedJobRequest(JLjava/lang/Integer;)I
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeInvalidJobs(J)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    monitor-enter v0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->getUnfinishedCoProcJobs(I)Ljava/util/List;

    move-result-object p3

    :goto_0
    move-object v1, p3

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;

    invoke-direct {v2, v0, p3, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_2
    move-object p3, v1

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$scheduleUnfinishedJobRequest$db$1;-><init>(JLjava/util/List;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    const/4 p2, 0x2

    invoke-static {p0, p2, v0, p1}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-lez p1, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->start()Z

    :cond_4
    return p1
.end method

.method public final workerProcessControlMsg(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;
    .locals 8

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v0, v4, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    const/16 v5, 0xc

    if-eq v3, v5, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "workerProcessControlMsg: Unknown msg code: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_3

    :cond_0
    sget-object v7, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_7

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start()Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v3

    :cond_4
    if-eqz v3, :cond_7

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iput v1, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v5, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v6, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    move-object v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_6
    move-object v2, v7

    goto :goto_4

    :cond_7
    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_3
    move-object v2, p0

    :goto_4
    new-instance p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    return-object p0
.end method

.method public final workerProcessRequest(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;
    .locals 10

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v0, v4, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v7, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->start()Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->isReady()Z

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    if-eqz v1, :cond_7

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;->getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v2, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iput v2, v4, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_6

    iget-wide v8, v4, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {p0, v8, v9}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-eqz p0, :cond_5

    iget-boolean p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->mCancelPending:Z

    if-ne p0, v3, :cond_5

    move p0, v3

    goto :goto_4

    :cond_5
    move p0, v5

    :goto_4
    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    move v3, v5

    :goto_5
    if-eqz v3, :cond_7

    if-eqz v0, :cond_8

    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object p0

    if-eqz p0, :cond_8

    iget v2, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v5, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v6, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    move-object v1, p0

    move-object v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    const-string v1, "Binder for coproc is dead, maybe process died?"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_7
    sget-object v7, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_8
    :goto_6
    move-object v2, v7

    new-instance p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->callerID:I

    sget-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    return-object p0
.end method
