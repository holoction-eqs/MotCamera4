.class public abstract Lkotlinx/coroutines/EventLoopImplPlatform;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public shared:Z

.field public unconfinedQueue:Lkotlin/collections/ArrayDeque;

.field public useCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final decrementUseCount(Z)V
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->shared:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->shutdown()V

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract getThread()Ljava/lang/Thread;
.end method

.method public final incrementUseCount(Z)V
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->shared:Z

    :cond_1
    return-void
.end method

.method public abstract processNextEvent()J
.end method

.method public final processUnconfinedEvent()Z
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->run()V

    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    return-void
.end method

.method public abstract shutdown()V
.end method
