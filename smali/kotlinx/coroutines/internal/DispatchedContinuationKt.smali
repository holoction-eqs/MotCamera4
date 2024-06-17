.class public abstract Lkotlinx/coroutines/internal/DispatchedContinuationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

.field public static final UNDEFINED:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->UNDEFINED:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final resumeCancellableWith(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v0, :cond_c

    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lkotlinx/coroutines/CompletedWithCancellation;

    invoke-direct {v0, p2, p1}, Lkotlinx/coroutines/CompletedWithCancellation;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance p2, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {p2, v0, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    move-object v0, p2

    :goto_0
    iget-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v2}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v4, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-virtual {v2, p1, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoopImplPlatform;

    move-result-object v2

    iget-wide v5, v2, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    const-wide v7, 0x100000000L

    cmp-long v3, v5, v7

    if-ltz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v4, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    iget-object p1, v2, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, v2, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    :cond_4
    invoke-virtual {p1, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/EventLoopImplPlatform;->incrementUseCount(Z)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    sget-object v6, Lokio/Timeout;->$$INSTANCE$1:Lokio/Timeout;

    invoke-interface {v5, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v6

    if-nez v6, :cond_6

    check-cast v5, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeWith(Ljava/lang/Object;)V

    move v1, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_2
    if-nez v1, :cond_b

    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v5, :cond_7

    invoke-static {p2, v1, v0}, Lkotlin/time/DurationKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_7
    move-object v5, v3

    :goto_3
    :try_start_1
    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_8

    :try_start_2
    invoke-virtual {v5}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_8
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_a
    throw p1

    :cond_b
    :goto_4
    invoke-virtual {v2}, Lkotlinx/coroutines/EventLoopImplPlatform;->processUnconfinedEvent()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_b

    goto :goto_6

    :goto_5
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_6
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    goto :goto_7

    :catchall_2
    move-exception p0

    invoke-virtual {v2, v4}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    throw p0

    :cond_c
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_7
    return-void
.end method
