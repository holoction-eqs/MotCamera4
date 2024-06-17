.class public abstract Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final reverseStateMap:Ljava/util/LinkedHashMap;


# instance fields
.field public final jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Unknown;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Unknown;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "Unknown"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Init;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "Init"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "InQueue"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "JmsTxCoProcProcessJob"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxCoProcJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxCoProcJobComplete;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "JmsRxCoProcJobComplete"

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    new-instance v6, Lkotlin/Pair;

    const-string v7, "JmsTxDstClientProcessJob"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    new-instance v7, Lkotlin/Pair;

    const-string v8, "JmsRxDstClientJobComplete"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxSrcClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxSrcClientJobComplete;

    new-instance v8, Lkotlin/Pair;

    const-string v9, "JmsTxSrcClientJobComplete"

    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    new-instance v9, Lkotlin/Pair;

    const-string v10, "CompleteJob"

    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$RemoveJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$RemoveJob;

    new-instance v10, Lkotlin/Pair;

    const-string v11, "RemoveJob"

    invoke-direct {v10, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    new-instance v11, Lkotlin/Pair;

    const-string v12, "CancelJob"

    invoke-direct {v11, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v11}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->reverseStateMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 0

    const-string p2, "jmsIntf"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    sget-object p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$2:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    sget-object p0, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$12:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    new-instance p1, Lcom/tinder/StateMachine$GraphBuilder;

    invoke-direct {p1}, Lcom/tinder/StateMachine$GraphBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    if-eqz p0, :cond_0

    iget-object p2, p1, Lcom/tinder/StateMachine$GraphBuilder;->stateDefinitions:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lkotlin/collections/MapsKt___MapsJvmKt;->toMap(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    iget-object p1, p1, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V
    .locals 11

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;->command:Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget v1, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;->calleeId:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callProcessMsg(IILcom/motorola/camera/background/common/msg/MsgParameters;)V

    goto/16 :goto_f

    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_CTL_MSG:Lcom/motorola/camera/background/common/msg/MsgType;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callWorker(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lcom/motorola/camera/background/common/msg/MsgType;)V

    goto/16 :goto_f

    :cond_2
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;->ackCommand:Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget v3, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;->calleeId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->procIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    :cond_3
    move-object v2, v1

    if-eqz v2, :cond_18

    :try_start_0
    iget-object v6, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v5, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v7, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/camera/background/common/msg/MsgParameters;->retCode:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception p0

    const-string v0, "callProcessCtlMsg, dead object for remote "

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    :cond_4
    instance-of v0, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    iget-wide v2, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_5

    monitor-enter p1

    :try_start_1
    invoke-static {p1, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    invoke-virtual {p1, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_8

    move p1, v2

    goto :goto_3

    :cond_8
    move p1, v0

    :goto_3
    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_9

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v5, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;

    invoke-direct {v5, v4, p1, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_pendingJobs$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/service/jms/JobDatabase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget p1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez p1, :cond_9

    move p1, v2

    goto :goto_4

    :cond_9
    move p1, v0

    :goto_4
    if-eqz p1, :cond_14

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->cancelKeepAliveJob()V

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p1, :cond_b

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeInvalidJobs(J)V

    :cond_b
    if-eqz v3, :cond_c

    iget-object p1, v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-ne p1, v2, :cond_c

    move p1, v2

    goto :goto_5

    :cond_c
    move p1, v0

    :goto_5
    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->context:Landroid/content/Context;

    if-eqz p1, :cond_14

    sget-object v4, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v6, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    if-eqz v6, :cond_d

    sget-object v6, Lcom/motorola/camera/background/provider/FileDataContract;->IN_MEMORY_CONTENT_URI:Landroid/net/Uri;

    goto :goto_6

    :cond_d
    sget-object v6, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    :goto_6
    const-string v7, "id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_e

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_7

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :cond_e
    move-object v6, v1

    :goto_7
    if-nez v6, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_10

    :goto_8
    move v6, v2

    goto :goto_9

    :cond_10
    move v6, v0

    :goto_9
    if-nez v6, :cond_11

    :goto_a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "id"

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/motorola/camera/background/provider/FileDataContract;->cursorReaderHelperLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :cond_11
    invoke-static {v5, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteData(Landroid/content/Context;J)I

    goto :goto_b

    :cond_12
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/settings/CacheBehavior;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Lkotlin/io/FileTreeWalk;

    invoke-direct {v1, p1, v2}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;I)V

    new-instance p1, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    invoke-direct {p1, v1}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    :cond_13
    :goto_c
    invoke-virtual {p1}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lkotlin/collections/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_c

    :goto_d
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v5, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_14
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->mJobDatabase:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-ne p0, v2, :cond_15

    goto :goto_e

    :cond_15
    move v2, v0

    :goto_e
    if-eqz v2, :cond_18

    if-eqz v3, :cond_16

    invoke-virtual {v3, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->updateProgress(I)V

    :cond_16
    if-eqz v3, :cond_18

    monitor-enter v3

    :try_start_4
    iget-object p0, v3, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->stopSelf(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v3

    goto :goto_f

    :catchall_3
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_17
    sget-object p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown effect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_f
    return-void
.end method
