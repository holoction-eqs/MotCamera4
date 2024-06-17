.class public final Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public currentTask:Ljava/lang/Object;

.field public final synthetic this$0:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;Lkotlinx/coroutines/android/HandlerContext;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->currentTask:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->this$0:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->this$0:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->currentTask:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->this$0:Lkotlinx/coroutines/CoroutineDispatcher;

    iget v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->currentTask:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v2}, Lkotlinx/coroutines/SupervisorKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/internal/LimitedDispatcher;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->currentTask:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    iget-object v3, v2, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v3}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->currentTask:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlinx/coroutines/android/HandlerContext;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/CancellableContinuation;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
