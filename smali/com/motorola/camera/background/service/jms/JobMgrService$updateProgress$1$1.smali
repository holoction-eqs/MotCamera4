.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $pending:I

.field public final synthetic $progress:I

.field public final synthetic $progressMax:I

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrService;IIILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$progress:I

    iput p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$progressMax:I

    iput p4, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$pending:I

    invoke-direct {p0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iget v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$progress:I

    iget v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$progressMax:I

    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$pending:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;IIILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mProgressUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    iget v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$progressMax:I

    iget v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$pending:I

    iget v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->$progress:I

    invoke-direct {v1, v5, v3, v4}, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;-><init>(III)V

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$updateProgress$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
