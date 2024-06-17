.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p1, Lcom/motorola/camera/background/service/jms/JobMgrService;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$onStartCommand$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    const/4 v2, 0x0

    const-string v3, "mImplIntf"

    if-eqz v1, :cond_5

    invoke-interface {v1, p1, v0}, Ljms/IJobMgrService;->initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/background/common/ServiceBase;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initializeSelf, return code is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", restarted as fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pendingJobs: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->PENDING_JOBS:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->FAILED_TRANSACTION:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
