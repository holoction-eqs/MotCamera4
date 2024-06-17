.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $TAG:Ljava/lang/String;

.field public final synthetic $jobResults:Lkotlinx/coroutines/channels/SendChannel;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->$TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iput-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->$TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->this$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v4, v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v7, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v6, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-object v8, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->rules:Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v3 .. v8}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;

    if-nez v1, :cond_3

    sget-object v1, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_3
    invoke-direct {v3, p1, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobResult;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;Lcom/motorola/camera/background/common/ReturnCode;)V

    iput v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->label:I

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1$1$2;->$jobResults:Lkotlinx/coroutines/channels/SendChannel;

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
