.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $id:J

.field public final synthetic $job:Lcom/motorola/camera/background/service/jms/db/Transaction;

.field public J$0:J

.field public L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public L$1:Lcom/motorola/camera/background/service/jms/db/Transaction;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->$id:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->$job:Lcom/motorola/camera/background/service/jms/db/Transaction;

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->$id:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->$job:Lcom/motorola/camera/background/service/jms/db/Transaction;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->J$0:J

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->L$1:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v6, v0

    move-object v1, v2

    move-wide v2, v6

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->$job:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-object v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->L$1:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-wide v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->$id:J

    iput-wide v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->J$0:J

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_addNewJobtoDB$1;->label:I

    invoke-virtual {v1, v4, v5, p0}, Lcom/google/common/base/Splitter$1;->selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v1, v3

    move-wide v2, v4

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "transaction"

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;-><init>(Lcom/motorola/camera/background/service/jms/db/Transaction;JLcom/google/common/base/Splitter$1;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, p1, v0}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
