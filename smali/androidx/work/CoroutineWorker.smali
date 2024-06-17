.class public abstract Landroidx/work/CoroutineWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final coroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field public final future:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final job:Lkotlinx/coroutines/JobImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->job:Lkotlinx/coroutines/JobImpl;

    new-instance p1, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p1}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    new-instance v0, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p2, p2, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p2, p2, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {p1, v0, p2}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->coroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    return-void
.end method


# virtual methods
.method public abstract doWork()Ljava/lang/Object;
.end method

.method public final onStopped()V
    .locals 1

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    return-void
.end method

.method public final startWork()Landroidx/work/impl/utils/futures/SettableFuture;
    .locals 5

    iget-object v0, p0, Landroidx/work/CoroutineWorker;->job:Lkotlinx/coroutines/JobImpl;

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->coroutineContext:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-virtual {v1, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Landroidx/work/CoroutineWorker$startWork$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/work/CoroutineWorker$startWork$1;-><init>(Landroidx/work/CoroutineWorker;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v1, v3}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method
