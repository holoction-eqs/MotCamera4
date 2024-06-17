.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $invalidList:Ljava/util/List;

.field public final synthetic $timeStamp:J

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$timeStamp:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$invalidList:Ljava/util/List;

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$timeStamp:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$invalidList:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLjava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->label:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    iput v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v5, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;-><init>(Lcom/google/common/base/Splitter$1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v1, v2, v5, p1}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget v1, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    if-gtz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    sget-object v5, Lcom/motorola/camera/background/service/jms/JobDatabase;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    iget-wide v7, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$timeStamp:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    iget-boolean v6, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v4

    :goto_5
    if-eqz v1, :cond_3

    iget-wide v5, v0, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    invoke-virtual {v3, v5, v6}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_getInvalidTransactions$1;->$invalidList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
