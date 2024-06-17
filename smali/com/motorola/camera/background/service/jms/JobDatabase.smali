.class public final Lcom/motorola/camera/background/service/jms/JobDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NUM_RETRIES:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

.field public final mJobMap:Ljava/util/LinkedHashMap;

.field public final mTransactionRepository:Lcom/google/common/base/Splitter$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->DEFAULT_NUM_RETRIES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/background/service/jms/JobMgrScheduler;)V
    .locals 1

    const-string v0, "jmsIntf"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    new-instance p2, Lcom/google/common/base/Splitter$1;

    invoke-direct {p2, p1}, Lcom/google/common/base/Splitter$1;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v8, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-boolean p0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public static sortRequests(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    new-instance v1, Lcom/airbnb/lottie/PerformanceTracker$1;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final DB_removeInvalidJobs(J)V
    .locals 25

    move-object/from16 v6, p0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/db/Transaction;

    sget v3, Lcom/motorola/camera/background/service/jms/db/Transaction;->$r8$clinit:I

    invoke-static {v2}, L_COROUTINE/ArtificialStackFrames;->getMsgInitial(Lcom/motorola/camera/background/service/jms/db/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object v3, v3, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const-string v13, "CANCEL"

    sget-object v12, Lcom/motorola/camera/background/common/msg/MsgType;->CANCEL_JOB:Lcom/motorola/camera/background/common/msg/MsgType;

    new-instance v11, Lcom/motorola/camera/background/common/TaskId;

    iget v15, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    iget-wide v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    iget-wide v8, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    iget v5, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    iget v10, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    iget v14, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    move-object/from16 p1, v1

    iget-boolean v1, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    move/from16 v22, v14

    move-object v14, v11

    move-wide/from16 v16, v3

    move-wide/from16 v18, v8

    move/from16 v20, v5

    move/from16 v21, v10

    move/from16 v23, v1

    move-object/from16 v24, v2

    invoke-direct/range {v14 .. v24}, Lcom/motorola/camera/background/common/TaskId;-><init>(IJJIIIZLjava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v9, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    move-object v8, v2

    move v4, v10

    move-object v10, v1

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    iget v1, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-virtual {v0, v1, v4, v2}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->callProcessMsg(IILcom/motorola/camera/background/common/msg/MsgParameters;)V

    goto :goto_1

    :cond_0
    move-object/from16 p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "earlyJobTermination: message type not supported ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-wide v1, v1, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    invoke-static {v6, v1, v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_removeResources$default(Lcom/motorola/camera/background/service/jms/JobDatabase;J)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final DB_updateMarkForDelete(J)V
    .locals 7

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v6, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMarkForDelete$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMarkForDelete$1;-><init>(Lcom/google/common/base/Splitter$1;JZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v6, p1}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V
    .locals 11

    move-object v0, p4

    const-string v1, "msgType"

    invoke-static {p4, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "returnCode"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v0, Lcom/motorola/camera/background/common/msg/MsgType;->msgCode:I

    if-nez p5, :cond_0

    const-string v0, ""

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/background/common/ReturnCode;->getReturnCode()I

    move-result v9

    move-object v0, p0

    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;

    const/4 v10, 0x0

    move-object v2, v1

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;-><init>(Lcom/google/common/base/Splitter$1;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v1, v2}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->reverseStateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, "Unknown"

    :cond_0
    move-object v4, p3

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance p3, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;

    const/4 v5, 0x0

    move-object v0, p3

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateState$1;-><init>(Lcom/google/common/base/Splitter$1;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, p3, p1}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final generateJobRequest$enumunboxing$(Lcom/motorola/camera/background/service/jms/db/Transaction;I)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;
    .locals 15

    move-object/from16 v0, p1

    sget v1, Lcom/motorola/camera/background/service/jms/db/Transaction;->$r8$clinit:I

    invoke-static/range {p1 .. p1}, L_COROUTINE/ArtificialStackFrames;->getMsgInitial(Lcom/motorola/camera/background/service/jms/db/Transaction;)Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-result-object v1

    new-instance v14, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget v3, v1, Lcom/motorola/camera/background/common/msg/MsgParameters;->caller:I

    iget-object v4, v1, Lcom/motorola/camera/background/common/msg/MsgParameters;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v5, v1, Lcom/motorola/camera/background/common/msg/MsgParameters;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v1, v1, Lcom/motorola/camera/background/common/msg/MsgParameters;->msg:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v6, v1

    sget-object v1, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    iget v2, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/background/common/Priority;->map:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/Priority;

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    :cond_1
    move-object v7, v1

    iget-wide v8, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    iget v0, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v1, p0

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->jmsIntf:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    iget-object v2, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    sget-object v12, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-static {v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v12}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    :cond_2
    move-object v12, v11

    :goto_0
    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v11

    :goto_1
    move-object v2, v14

    move-object v11, v12

    move-object v12, v0

    move/from16 v13, p2

    invoke-direct/range {v2 .. v13}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;I)V

    return-object v14
.end method

.method public final getUnfinishedCoProcJobs(I)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    iget-object v6, v3, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    sget-object v7, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    sget-object v3, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    const/16 v3, 0xa

    iput v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-boolean v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget v3, v2, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    if-ne p1, v3, :cond_4

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->generateJobRequest$enumunboxing$(Lcom/motorola/camera/background/service/jms/db/Transaction;I)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->sortRequests(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final jobExists(J)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final transitionAndProcess(JLcom/google/android/gms/internal/mlkit_vision_barcode/zzni;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "fromState"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/tinder/StateMachine;->getTransition(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tinder/StateMachine$Transition;

    move-result-object p1

    instance-of p2, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, p1

    check-cast v0, Lcom/tinder/StateMachine$Transition$Valid;

    iget-object v0, v0, Lcom/tinder/StateMachine$Transition$Valid;->toState:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    iget-object p2, p0, Lcom/tinder/StateMachine;->graph:Lcom/tinder/StateMachine$Graph;

    iget-object p2, p2, Lcom/tinder/StateMachine$Graph;->onTransitionListeners:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    iget-object p2, p1, Lcom/tinder/StateMachine$Transition$Valid;->fromState:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/tinder/StateMachine;->getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;

    move-result-object v0

    iget-object v0, v0, Lcom/tinder/StateMachine$Graph$State;->onExitListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->toState:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/tinder/StateMachine;->getDefinition(Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State;

    move-result-object p0

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State;->onEnterListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    return-void
.end method
