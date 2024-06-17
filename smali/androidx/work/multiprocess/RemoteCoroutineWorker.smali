.class public abstract Landroidx/work/multiprocess/RemoteCoroutineWorker;
.super Landroidx/work/multiprocess/RemoteListenableWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/multiprocess/RemoteCoroutineWorker;",
        "Landroidx/work/multiprocess/RemoteListenableWorker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "parameters",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-multiprocess_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final future:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final job:Lkotlinx/coroutines/JobImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/multiprocess/RemoteListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->job:Lkotlinx/coroutines/JobImpl;

    new-instance p1, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p1}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    new-instance p2, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v0, 0xf

    invoke-direct {p2, p0, v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    iget-object p0, p0, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {p1, p2, p0}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onStopped()V
    .locals 1

    invoke-super {p0}, Landroidx/work/multiprocess/RemoteListenableWorker;->onStopped()V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteCoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    return-void
.end method
