.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

.field public L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v11, p1

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v11, p1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v10, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/channels/ActorScope;

    :try_start_4
    move-object v2, v8

    check-cast v2, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelCoroutine;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :cond_5
    :goto_0
    :try_start_5
    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v3, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iput v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v10, :cond_10

    :try_start_6
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    instance-of v12, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    if-eqz v12, :cond_9

    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iget v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;->callerId:I

    move-object v12, v10

    check-cast v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iput v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v9, v11, v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processControlMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Boolean;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v11, v1, :cond_7

    return-object v1

    :cond_7
    move-object/from16 v16, v8

    move-object v8, v2

    move-object v2, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_2
    :try_start_7
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executorActor: Invalid msg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    :goto_3
    move-object v2, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v8, v9

    goto/16 :goto_6

    :cond_9
    :try_start_8
    instance-of v12, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;

    if-eqz v12, :cond_a

    goto :goto_0

    :cond_a
    instance-of v12, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    if-eqz v12, :cond_c

    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    iget v11, v11, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;->callerId:I

    move-object v12, v10

    check-cast v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$3:Lcom/motorola/camera/background/service/jms/ExecutorMsg;

    iput v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v9, v11, v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processRequestMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)Ljava/lang/Boolean;

    move-result-object v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-ne v11, v1, :cond_b

    return-object v1

    :cond_b
    move-object/from16 v16, v8

    move-object v8, v2

    move-object v2, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_4
    :try_start_9
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executorActor: Request msg invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :cond_c
    :try_start_a
    instance-of v12, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    if-eqz v12, :cond_d

    goto/16 :goto_0

    :cond_d
    instance-of v12, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    if-eqz v12, :cond_5

    move-object v12, v10

    check-cast v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object v13, v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v13, v13, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v15, v9, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v15, :cond_e

    invoke-virtual {v15, v13, v14}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result v15

    if-ne v15, v7, :cond_e

    move v15, v7

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_f

    check-cast v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;

    iget v10, v10, Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;->callerId:I

    iput-object v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$executorActor$1;->label:I

    invoke-virtual {v9, v10, v12, v13, v14}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->processResultMsg(ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;J)V

    if-ne v11, v1, :cond_5

    return-object v1

    :cond_f
    sget-object v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    iget-object v11, v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "executorActor: Results message unknown result task id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    :cond_10
    invoke-static {v8, v3}, Lkotlin/reflect/jvm/KCallablesJvm;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v11

    :goto_6
    move-object v1, v0

    move-object v9, v8

    :goto_7
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v9, v1}, Lkotlin/reflect/jvm/KCallablesJvm;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v2
.end method
