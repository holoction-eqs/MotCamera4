.class public final Lcom/motorola/camera/service/CameraForegroundProcessingService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\u0005\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/motorola/camera/service/CameraForegroundProcessingService;",
        "Landroid/app/Service;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "()V",
        "com/google/android/gms/dynamite/zzo",
        "1",
        "JobHolder",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bgJobService:Lcom/motorola/camera/service/BgJobService;

.field public final coroutineContextJob:Lkotlinx/coroutines/SupervisorJobImpl;

.field public initJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public jniClient:Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

.field public final jobs:Ljava/util/LinkedHashMap;

.field public lastStartId:I

.field public final mainDispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

.field public postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

.field public final workChannel:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lkotlinx/coroutines/SupervisorJobImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->coroutineContextJob:Lkotlinx/coroutines/SupervisorJobImpl;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->mainDispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/motorola/camera/service/BgJobService;

    invoke-direct {v0}, Lcom/motorola/camera/service/BgJobService;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->bgJobService:Lcom/motorola/camera/service/BgJobService;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lkotlinx/coroutines/DelayKt;->Channel$default(III)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->workChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->lastStartId:I

    return-void
.end method

.method public static final access$startProcessing(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;

    iget v2, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->L$1:Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    iget-object v4, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->L$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v3

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->L$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string v0, "CameraForegroundProcessingService"

    const-string v4, "startProcessing"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_1
    iput-object v2, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->L$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iput-object v6, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->L$1:Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    iput v7, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->label:I

    iget-object v4, v2, Lcom/motorola/camera/service/CameraForegroundProcessingService;->workChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object/from16 v16, v3

    move-object v3, v0

    move-object v0, v4

    move-object/from16 v4, v16

    :goto_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    iget-object v0, v2, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-nez v0, :cond_5

    move-object v3, v8

    goto :goto_6

    :cond_5
    iget-object v9, v2, Lcom/motorola/camera/service/CameraForegroundProcessingService;->initJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v9, :cond_f

    iput-object v2, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->L$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iput-object v0, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->L$1:Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    iput v5, v1, Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;->label:I

    :cond_6
    invoke-virtual {v9}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lkotlinx/coroutines/Incomplete;

    if-nez v11, :cond_7

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v9, v10}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_6

    move v10, v7

    :goto_3
    if-nez v10, :cond_9

    iget-object v9, v1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v9}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget-object v10, Lokio/Timeout;->$$INSTANCE$1:Lokio/Timeout;

    invoke-interface {v9, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/Job;

    if-eqz v9, :cond_b

    invoke-interface {v9}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    check-cast v9, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v9}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_9
    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v11, Lkotlinx/coroutines/InvokeOnCompletion;

    invoke-direct {v11, v10, v5}, Lkotlinx/coroutines/InvokeOnCompletion;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v11}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v9

    new-instance v11, Lkotlinx/coroutines/InvokeOnCancel;

    invoke-direct {v11, v9, v7}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_a

    goto :goto_4

    :cond_a
    move-object v9, v8

    :goto_4
    if-ne v9, v3, :cond_b

    move-object v8, v9

    :cond_b
    :goto_5
    if-ne v8, v4, :cond_c

    move-object v3, v4

    :goto_6
    return-object v3

    :cond_c
    move-object/from16 v16, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v4

    move-object/from16 v4, v16

    :goto_7
    iget-object v8, v2, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;->algoContext:Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    const-string v9, ""

    invoke-static {v9, v8}, Lcom/motorola/camera/settings/CacheBehavior;->createMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v8, v4, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v10

    if-eqz v10, :cond_d

    sget-object v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    const/4 v11, 0x3

    sget-object v14, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v13, v2, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;->taskId:Lcom/motorola/camera/background/common/TaskId;

    sget-object v12, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v10 .. v15}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_d
    move-object v2, v4

    goto/16 :goto_1

    :cond_e
    const-string v0, "postProcJni"

    invoke-static {v0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_f
    const-string v0, "initJob"

    invoke-static {v0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6
.end method

.method public static final access$tryStopService(Lcom/motorola/camera/service/CameraForegroundProcessingService;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "CameraForegroundProcessingService"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tryStopService, jobs remaining: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->lastStartId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "tryStopService, Stop foreground processing service with startId: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->lastStartId:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->lastStartId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "tryStopService, Stopping service: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lokio/Timeout;->$$INSTANCE$1:Lokio/Timeout;

    iget-object v1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->coroutineContextJob:Lkotlinx/coroutines/SupervisorJobImpl;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/JobSupport;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    const-string v3, "postProcJni"

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jniClient:Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    if-eqz v4, :cond_4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deleteClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V

    iget-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->cleanUp()V

    iget-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->postProcJni:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deinitialize()I

    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p0, "jniClient"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->coroutineContextJob:Lkotlinx/coroutines/SupervisorJobImpl;

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$1;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v0, v3}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->initJob:Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$2;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onCreate$2;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v1, v2, v0, v3}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "applicationContext"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/camera/shared/NotificationHelper;->buildCameraForegroundNotification(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    new-instance p2, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, p1, v0}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;ILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    iget-object p3, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->mainDispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    const/4 v0, 0x2

    invoke-static {p0, p3, p1, p2, v0}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return v0
.end method
