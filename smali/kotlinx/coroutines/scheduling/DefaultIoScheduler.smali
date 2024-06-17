.class public final Lkotlinx/coroutines/scheduling/DefaultIoScheduler;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

.field public static final default:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    sget v1, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v4, v2}, Lkotlinx/coroutines/JobKt;->systemProp$default(Ljava/lang/String;IIII)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/text/RegexKt;->checkParallelism(I)V

    sget v2, Lkotlinx/coroutines/scheduling/TasksKt;->MAX_POOL_SIZE:I

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/text/RegexKt;->checkParallelism(I)V

    new-instance v2, Lkotlinx/coroutines/internal/LimitedDispatcher;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/internal/LimitedDispatcher;-><init>(Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;I)V

    move-object v0, v2

    :goto_1
    sput-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->default:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->default:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
