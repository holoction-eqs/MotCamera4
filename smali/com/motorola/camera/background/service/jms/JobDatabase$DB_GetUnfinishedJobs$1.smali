.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $jobList:Ljava/util/List;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->$jobList:Ljava/util/List;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->$jobList:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->label:I

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v4, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;-><init>(Lcom/google/common/base/Splitter$1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v5, v4, p1}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/db/Transaction;

    sget-object v1, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    const/16 v1, 0xa

    iput v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    iput-boolean v3, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    iget-boolean v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/motorola/camera/background/service/jms/JobDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/background/service/jms/JobDatabase;->generateJobRequest$enumunboxing$(Lcom/motorola/camera/background/service/jms/db/Transaction;I)Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_GetUnfinishedJobs$1;->$jobList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
