.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

.field public final synthetic $job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;-><init>(Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$genericMsgType:Lcom/motorola/camera/background/common/msg/MsgType;

    const/4 v4, 0x0

    const-string v5, "mWorkerActor"

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->$job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v7, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    if-ne v1, p1, :cond_4

    iget-object p1, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    if-eqz p1, :cond_3

    new-instance v1, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    invoke-virtual {v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlinx/coroutines/channels/SendChannel;)V

    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_3
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget-object p1, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mWorkerActor:Lkotlinx/coroutines/channels/ActorCoroutine;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    invoke-virtual {v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->getMExecutorActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlinx/coroutines/channels/SendChannel;)V

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$callWorker$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method
