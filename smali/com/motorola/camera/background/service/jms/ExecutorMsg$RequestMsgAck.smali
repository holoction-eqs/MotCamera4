.class public final Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;
.super Lcom/motorola/camera/background/service/jms/ExecutorMsg;
.source "SourceFile"


# instance fields
.field public final results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/background/service/jms/ExecutorMsg;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestMsgAck(results="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;->results:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
