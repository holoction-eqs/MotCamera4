.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $localTag:Ljava/lang/String;

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$localTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$localTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    iget v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I

    iget v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "progress.onReceive: state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->stringValueOf$3(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pending: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$localTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_7

    iget p0, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    if-nez p0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mDefaultNotification:Ljava/lang/String;

    if-eqz p0, :cond_6

    iget-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-string v3, "mNotificationBuilder"

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz p1, :cond_4

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_2

    iget-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "mNotificationManager"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p0, "mDefaultNotification"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_0
    iget-boolean p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz p0, :cond_9

    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mImplIntf:Ljms/IJobMgrService;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result p0

    if-gtz p0, :cond_9

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :cond_8
    const-string p0, "mImplIntf"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
