.class public final Landroidx/work/impl/utils/SerialExecutorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public mActive:Ljava/lang/Runnable;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLock:Ljava/lang/Object;

.field public final mTasks:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mTasks:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mTasks:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/work/Worker$2;

    const/16 v3, 0x8

    invoke-direct {v2, p0, p1, v3}, Landroidx/work/Worker$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final scheduleNext()V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/utils/SerialExecutorImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
