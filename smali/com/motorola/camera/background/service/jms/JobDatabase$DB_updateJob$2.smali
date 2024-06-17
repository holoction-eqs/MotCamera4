.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $key:J

.field public final synthetic $successful:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

.field public J$0:J

.field public L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public L$1:Lcom/motorola/camera/background/service/jms/db/Transaction;

.field public L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$key:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$key:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->J$0:J

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->L$1:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->L$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->L$1:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->L$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-wide v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->$key:J

    iput-wide v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->J$0:J

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_updateJob$2;->label:I

    invoke-virtual {v1, v5, v6, p0}, Lcom/google/common/base/Splitter$1;->selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v5

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_0
    if-eqz p1, :cond_3

    iput-wide v0, v4, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v4, v1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$update$1;-><init>(Lcom/google/common/base/Splitter$1;Lcom/motorola/camera/background/service/jms/db/Transaction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v0, p0}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iput-boolean v2, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
