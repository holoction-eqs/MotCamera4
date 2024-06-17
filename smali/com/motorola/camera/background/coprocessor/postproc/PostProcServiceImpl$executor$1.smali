.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public final synthetic $jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public final synthetic $workerJobCancelRequests:Lkotlinx/coroutines/channels/SendChannel;

.field public final synthetic $workerJobRequests:Lkotlinx/coroutines/channels/SendChannel;

.field public final synthetic $workerResults:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$0:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerResults:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerJobRequests:Lkotlinx/coroutines/channels/SendChannel;

    iput-object p5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerJobCancelRequests:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {p0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerResults:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerJobRequests:Lkotlinx/coroutines/channels/SendChannel;

    iget-object v5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerJobCancelRequests:Lkotlinx/coroutines/channels/SendChannel;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->L$0:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-class p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".executor"

    invoke-static {p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    new-instance p1, Lkotlinx/coroutines/selects/SelectImplementation;

    iget-object v3, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v3}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$jobRequests:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1$1$1;

    iget-object v5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerJobRequests:Lkotlinx/coroutines/channels/SendChannel;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1$1$1;-><init>(Ljava/lang/String;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v3, v4}, Lkotlinx/coroutines/selects/SelectImplementation;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$jobCancels:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1$1$2;

    iget-object v5, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerJobCancelRequests:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {v4, v1, v5, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1$1$2;-><init>(Ljava/lang/String;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v3, v4}, Lkotlinx/coroutines/selects/SelectImplementation;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->$workerResults:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1$1$3;

    invoke-direct {v4, v1, v6}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1$1$3;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v3, v4}, Lkotlinx/coroutines/selects/SelectImplementation;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    iput-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->L$0:Ljava/lang/String;

    iput v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;->label:I

    sget-object v3, Lkotlinx/coroutines/selects/SelectImplementation;->state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v3, :cond_3

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-ne p1, v0, :cond_2

    return-object v0
.end method
