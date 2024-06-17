.class public abstract Landroidx/work/multiprocess/RemoteListenableWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

.field public mComponentName:Landroid/content/ComponentName;

.field public final mWorkerParameters:Landroidx/work/WorkerParameters;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteListenableWorker"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    new-instance v0, Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object p2, p2, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, p2}, Landroidx/work/multiprocess/ListenableWorkerImplClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 3

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    new-instance v1, Lkotlin/DeepRecursiveFunction;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    invoke-virtual {p0, v0, v1}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Landroidx/work/impl/utils/futures/SettableFuture;

    :cond_0
    return-void
.end method

.method public final startWork()Landroidx/work/impl/utils/futures/SettableFuture;
    .locals 7

    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    iget-object v1, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v2, v1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mWorkerParameters:Landroidx/work/WorkerParameters;

    iget-object v3, v3, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroidx/work/Data;->mValues:Ljava/util/HashMap;

    const-string v5, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    iget-object v2, v2, Landroidx/work/Data;->mValues:Ljava/util/HashMap;

    const-string v5, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    sget-object v5, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    const-string v1, "Need to specify a package name for the Remote Service."

    invoke-virtual {p0, v5, v1}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    const-string v1, "Need to specify a class name for the Remote Service."

    invoke-virtual {p0, v5, v1}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mComponentName:Landroid/content/ComponentName;

    new-instance v4, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v4, p0, v0, v3}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Object;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->mClient:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    invoke-virtual {v0, v2, v4}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    new-instance v2, Lcom/google/common/base/Splitter$1;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, v1, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, p0}, Landroidx/work/multiprocess/RemoteClientUtils;->map(Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p0

    return-object p0
.end method
