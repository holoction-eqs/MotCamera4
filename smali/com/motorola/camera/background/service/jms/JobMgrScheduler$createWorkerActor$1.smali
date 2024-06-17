.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

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
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    move-object p1, v1

    move-object v1, v6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/channels/ActorScope;

    :try_start_2
    move-object p1, v5

    check-cast p1, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :goto_2
    :try_start_3
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    return-object v0

    :cond_5
    move-object v10, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v10

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v7, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg;

    instance-of v8, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    if-eqz v8, :cond_6

    sget-object v7, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    move-object v7, p1

    check-cast v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    sget-object v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-object v7, p1

    check-cast v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->workerProcessControlMsg(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-result-object v7

    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz p1, :cond_2

    new-instance v8, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;

    invoke-direct {v8, v7}, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V

    iput-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    invoke-interface {p1, v8, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_6
    instance-of v8, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    if-eqz v8, :cond_7

    sget-object v7, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    move-object v7, p1

    check-cast v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    sget-object v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-object v7, p1

    check-cast v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->workerProcessRequest(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-result-object v7

    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    if-eqz p1, :cond_2

    new-instance v8, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    invoke-direct {v8, v7}, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V

    iput-object v6, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$createWorkerActor$1;->label:I

    invoke-interface {p1, v8, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_7
    instance-of v8, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    if-eqz v8, :cond_c

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v8, Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Calling ackDone"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    :cond_9
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8, v7}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_ALREADY:Lkotlinx/coroutines/internal/Symbol;

    if-ne v8, v9, :cond_a

    goto/16 :goto_1

    :cond_a
    sget-object v9, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v8, v9, :cond_b

    goto/16 :goto_1

    :cond_b
    sget-object v9, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_RETRY:Lkotlinx/coroutines/internal/Symbol;

    if-eq v8, v9, :cond_9

    goto/16 :goto_1

    :cond_c
    sget-object v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_d
    invoke-static {v5, v7}, Lkotlin/reflect/jvm/KCallablesJvm;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v5, p0}, Lkotlin/reflect/jvm/KCallablesJvm;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p1
.end method
