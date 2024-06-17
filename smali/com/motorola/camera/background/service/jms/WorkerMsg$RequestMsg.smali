.class public final Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;
.super Lcom/motorola/camera/background/service/jms/WorkerMsg;
.source "SourceFile"


# instance fields
.field public final job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

.field public final resultChannel:Lkotlinx/coroutines/channels/SendChannel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlinx/coroutines/channels/SendChannel;)V
    .locals 1

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/camera/background/service/jms/WorkerMsg;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;

    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestMsg(job="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->job:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resultChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/WorkerMsg$RequestMsg;->resultChannel:Lkotlinx/coroutines/channels/SendChannel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
