.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $key:J

.field public final synthetic $removeEntryOnly:Z

.field public final synthetic $successful:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iput-boolean p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$removeEntryOnly:Z

    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iget-boolean v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$removeEntryOnly:Z

    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JZLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v7, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    iput v6, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    invoke-virtual {p1, v4, v5, p0}, Lcom/google/common/base/Splitter$1;->selectById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    if-eqz p1, :cond_8

    invoke-virtual {v7, v4, v5}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    iget-object v1, v7, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-boolean v8, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$removeEntryOnly:Z

    if-nez v8, :cond_4

    sget-object v8, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    invoke-static {v1, v8, v9}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteTagData(Landroid/content/Context;J)I

    :cond_4
    iget-wide v8, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    iput v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    iget-object p1, v7, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/google/common/base/Splitter$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$deleteById$2;

    const/4 v10, 0x0

    invoke-direct {v3, p1, v8, v9, v10}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$deleteById$2;-><init>(Lcom/google/common/base/Splitter$1;JLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    if-lez p1, :cond_7

    move v2, v6

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_8
    invoke-virtual {v7, v4, v5}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result p0

    if-eqz p0, :cond_9

    iget-object p0, v7, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
