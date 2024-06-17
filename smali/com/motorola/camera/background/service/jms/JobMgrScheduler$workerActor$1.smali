.class public final Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

.field public L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

.field public L$4:Ljava/util/Collection;

.field public L$5:Ljava/util/Iterator;

.field public L$6:Ljava/util/Collection;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ActorScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    check-cast v2, Ljava/util/Collection;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iget-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v7, p1

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    check-cast v2, Ljava/util/Iterator;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    check-cast v10, Ljava/util/List;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iget-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    move-object v14, v10

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v11

    goto/16 :goto_8

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v11, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lkotlinx/coroutines/channels/ActorScope;

    :try_start_4
    move-object v2, v14

    check-cast v2, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelCoroutine;->iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    :goto_0
    :try_start_5
    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iput-object v4, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    iput v9, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/background/service/jms/WorkerMsg;

    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    if-eqz v12, :cond_6

    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$ControlMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    sget-object v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v12, v11, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_11

    return-object v1

    :cond_6
    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    if-eqz v12, :cond_7

    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v12, v12, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->coProcId:Ljava/lang/Integer;

    invoke-static {v10, v12}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->access$getCoProcCoroutineIndex(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_11

    iget-object v13, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iput-object v10, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v2, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput v7, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v12, v11, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_11

    return-object v1

    :cond_7
    instance-of v12, v11, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    if-eqz v12, :cond_10

    new-instance v12, Lkotlin/ranges/IntRange;

    iget-object v13, v10, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v12, v9, v13}, Lkotlin/ranges/IntRange;-><init>(II)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v12

    :goto_2
    iget-boolean v15, v12, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v15, :cond_8

    invoke-virtual {v12}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    new-instance v15, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-direct {v15, v4}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->withIndex(Ljava/lang/Iterable;)Lkotlin/collections/IndexingIterable;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v16, v12

    move-object v12, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v13

    move-object v13, v10

    move-object/from16 v10, v17

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/collections/IndexedValue;

    iget v7, v15, Lkotlin/collections/IndexedValue;->index:I

    iget-object v15, v15, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v8, v13, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->coProcActors:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v8, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    invoke-direct {v8, v15}, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    iput-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v11, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    move-object v15, v10

    check-cast v15, Ljava/util/Collection;

    iput-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    move-object v15, v2

    check-cast v15, Ljava/util/Iterator;

    iput-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    iput v6, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    invoke-interface {v7, v8, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    const/4 v7, 0x3

    const/4 v8, 0x2

    goto :goto_3

    :cond_a
    check-cast v10, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v10, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v10, v7

    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/CompletableDeferred;

    iput-object v15, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$0:Ljava/lang/Object;

    iput-object v14, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$1:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v13, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$2:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iput-object v12, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$3:Lcom/motorola/camera/background/service/jms/WorkerMsg;

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$4:Ljava/util/Collection;

    move-object v8, v10

    check-cast v8, Ljava/util/Iterator;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$5:Ljava/util/Iterator;

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    iput-object v8, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->L$6:Ljava/util/Collection;

    iput v5, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$workerActor$1;->label:I

    check-cast v7, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {v7, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_b

    return-object v1

    :cond_b
    move-object v11, v2

    :goto_6
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v11

    goto :goto_5

    :cond_c
    check-cast v2, Ljava/util/List;

    check-cast v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;

    iget-object v2, v12, Lcom/motorola/camera/background/service/jms/WorkerMsg$Done;->ack:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    :cond_d
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_ALREADY:Lkotlinx/coroutines/internal/Symbol;

    if-ne v8, v10, :cond_e

    goto :goto_7

    :cond_e
    sget-object v10, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v8, v10, :cond_f

    goto :goto_7

    :cond_f
    sget-object v10, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_RETRY:Lkotlinx/coroutines/internal/Symbol;

    if-eq v8, v10, :cond_d

    :goto_7
    move-object v2, v13

    move-object v10, v15

    goto :goto_8

    :cond_10
    sget-object v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown action "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    :goto_8
    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_0

    :cond_12
    invoke-static {v14, v4}, Lkotlin/reflect/jvm/KCallablesJvm;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_9
    move-object v1, v0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v14, v1}, Lkotlin/reflect/jvm/KCallablesJvm;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v2
.end method
