.class public abstract Landroidx/work/Worker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# instance fields
.field public mFuture:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public abstract doWork()Landroidx/work/ListenableWorker$Result;
.end method

.method public final startWork()Landroidx/work/impl/utils/futures/SettableFuture;
    .locals 3

    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    iput-object v0, p0, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/work/Worker$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method
