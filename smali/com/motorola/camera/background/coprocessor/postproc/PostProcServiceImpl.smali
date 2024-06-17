.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;
.super Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public final mClientMap:Ljava/util/LinkedHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mCoroutineJob:Lkotlinx/coroutines/JobImpl;

.field public final mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

.field public final mJobCancelsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final mJobRequestsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final mJobResultsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final mNumJobWorkers:I

.field public final mSharedPreferencesListener:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;

.field public mState:I

.field public final mWorkerCancelsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final mWorkerRequestsFifo:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    const/16 p1, 0x32

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/DelayKt;->Channel$default(III)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobRequestsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/DelayKt;->Channel$default(III)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobCancelsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/DelayKt;->Channel$default(III)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerRequestsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/DelayKt;->Channel$default(III)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerCancelsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/DelayKt;->Channel$default(III)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobResultsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    iput v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mNumJobWorkers:I

    new-instance p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;

    invoke-direct {p1, p0, v2}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mSharedPreferencesListener:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;

    return-void
.end method

.method public static final access$handleJobAllCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;I)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/JobImpl;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->initializeCoroutines()V

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "processJobCancel: clientId="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_1
    const-string p0, "processJobCancel: service not initialized"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    return-object p0
.end method

.method public static final access$handleJobCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/TaskId;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobCancel$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleJobCancel$1;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/DelayKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "processJobCancel: clientId="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_1
    const-string p0, "processJobCancel: service not initialized"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    return-object p0
.end method

.method public static final access$handleJobComplete(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 7

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    iget v0, p2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v2, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_0
    iget p1, p2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/List;

    if-eqz p0, :cond_1

    new-instance p1, Landroidx/work/JobListenableFuture$1;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;-><init>(ILandroidx/work/JobListenableFuture$1;)V

    invoke-interface {p0, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method

.method public static final access$handleProcessJob(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    const/16 v3, 0x8

    invoke-direct {v2, p3, p2, p4, v3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;I)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    new-instance p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v1, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$handleProcessJob$1;-><init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/DelayKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "processJob: clientId="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_2
    const-string p0, "processJob: service not initialized"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized deinitialize()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deleteClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->cleanUp()V

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deinitialize()I

    move-result v2

    aget-object v0, v0, v2

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/JobImpl;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.motorola.camera_preferences"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mSharedPreferencesListener:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;

    new-instance v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;I)V

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iput v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "deinitialize: service already deinitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mCoroutineJob:Lkotlinx/coroutines/JobImpl;

    return-object p0
.end method

.method public final declared-synchronized initialize(Ljava/lang/String;[BLandroid/os/Bundle;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticConfig"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "models"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->values()[Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->initialize(Ljava/lang/String;[B)I

    move-result p1

    aget-object p1, v0, p1

    sget-object p2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.motorola.camera_preferences"

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mSharedPreferencesListener:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;

    new-instance v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;I)V

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->addClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    invoke-virtual {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->initializeCoroutines()V

    iput v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->updateDebugMasks(Landroid/content/SharedPreferences;)V

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {p3}, Lcom/google/android/gms/dynamite/zzo;->createModelResourcesList(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setMlModelsList(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    iget-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string v0, "mContext.cacheDir.absolutePath"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setCacheDir(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    iget-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string v0, "mContext.filesDir.absolutePath"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setFilesDir(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_1
    :try_start_2
    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "initialize: service already initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final initializeCoroutines()V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v6, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobResultsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v7, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerCancelsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v8, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mWorkerRequestsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    iget v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mNumJobWorkers:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-ge v1, v2, :cond_0

    new-instance v11, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;

    const/4 v12, 0x0

    move-object v2, v11

    move-object v3, v8

    move-object v4, v7

    move-object v5, p0

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$worker$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v10, v0, v11, v9}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobRequestsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v4, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJobCancelsFifo:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;

    const/4 v11, 0x0

    move-object v2, v1

    move-object v5, v6

    move-object v6, v8

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$executor$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v10, v0, v1, v9}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final declared-synchronized registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;-><init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p2

    :cond_2
    :try_start_2
    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "registerClient: service not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unregisterClient(I)V
    .locals 5

    const-string v0, "unregisterClient: unknown clientId="

    const-string v1, "unregisterClient("

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->jobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;

    sget-object v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: unregister client with stale job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p1, "unregisterClient: service not initialized"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateDebugMasks(Landroid/content/SharedPreferences;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "com.motorola.camera.mcf_debug_logdd_mask"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.motorola.camera.mcf_debug_logad_mask"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.motorola.camera.mcf_debug_mask0"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.motorola.camera.mcf_debug_mask1"

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "com.motorola.camera.mcf_debug_mask2"

    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogDDFlag(I)I

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setLogADFlag(Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v3, v4, p1, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->setDebugDumpFlags(IIII)I

    :cond_1
    return-void
.end method
