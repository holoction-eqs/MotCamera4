.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $jobRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iput-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->$jobRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->$jobRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->label:I

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

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobRequestsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->$jobRequest:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
