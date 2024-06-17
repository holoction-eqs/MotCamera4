.class public abstract Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "SourceFile"


# instance fields
.field public final coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    iput-object v6, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-void
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object p1, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    const/4 v0, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContextImpl;Z)V

    return-void
.end method
