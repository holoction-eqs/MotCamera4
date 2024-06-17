.class public final Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $startId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;ILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iput p2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$startId:I

    iput-object p3, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$intent:Landroid/content/Intent;

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;

    iget v1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$startId:I

    iget-object v2, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;-><init>(Lcom/motorola/camera/service/CameraForegroundProcessingService;ILandroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->this$0:Lcom/motorola/camera/service/CameraForegroundProcessingService;

    iget v1, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$startId:I

    iput v1, v0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->lastStartId:I

    iget-object p0, p0, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1;->$intent:Landroid/content/Intent;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v2, "CameraForegroundProcessingService.EXTRA_TASK_ID"

    const-class v3, Lcom/motorola/camera/background/common/TaskId;

    invoke-static {p0, v2, v3}, Lokio/SegmentPool;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/common/TaskId;

    const-string v3, "CameraForegroundProcessingService.EXTRA_ALGO_CONTEXT"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onStartCommand, startId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jobNum: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CameraForegroundProcessingService"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    sget-object v4, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v4, v4, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    iget-wide v5, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v4, :cond_3

    iget-object v7, v0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v5, v6}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    invoke-direct {v5, v2, p0, v4}, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;-><init>(Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    new-instance v4, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1$1$1;

    invoke-direct {v4, v2, v0, v3}, Lcom/motorola/camera/service/CameraForegroundProcessingService$onStartCommand$1$1$1;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    invoke-static {p1, p0, v1, v4, v2}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No media data for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/service/CameraForegroundProcessingService;->access$tryStopService(Lcom/motorola/camera/service/CameraForegroundProcessingService;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
