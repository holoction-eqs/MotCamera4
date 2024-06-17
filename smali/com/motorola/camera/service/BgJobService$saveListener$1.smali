.class public final Lcom/motorola/camera/service/BgJobService$saveListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/service/BgJobService;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/BgJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/service/BgJobService$saveListener$1;->this$0:Lcom/motorola/camera/service/BgJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyResultReceiver(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    const-string v1, " is dead"

    const-string v2, "Binder for task "

    const-string v3, "BgJobService"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService$saveListener$1;->this$0:Lcom/motorola/camera/service/BgJobService;

    sget v0, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p2}, Lcom/motorola/camera/service/BgJobService;->getResponseMessage(ILcom/motorola/camera/background/common/TaskId;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget p1, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget p0, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/service/BgJobService$saveListener$1;->this$0:Lcom/motorola/camera/service/BgJobService;

    iget-object v1, v0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/service/BgJobService;->subTaskCount:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    const-string v4, "data.taskID"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/motorola/camera/service/BgJobService$saveListener$1;->notifyResultReceiver(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_0
    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/service/BgJobService$saveListener$1;->this$0:Lcom/motorola/camera/service/BgJobService;

    iget-object v0, v0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lcom/motorola/camera/service/BgJobService$saveListener$1;->notifyResultReceiver(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_0
    return-void
.end method
