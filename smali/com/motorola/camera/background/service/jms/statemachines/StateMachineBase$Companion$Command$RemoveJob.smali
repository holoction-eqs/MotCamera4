.class public final Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;
.super Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;
.source "SourceFile"


# instance fields
.field public final key:J

.field public final taskId:Lcom/motorola/camera/background/common/TaskId;


# direct methods
.method public constructor <init>(JLcom/motorola/camera/background/common/TaskId;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    iget-wide v3, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    iget-wide v5, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/TaskId;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoveJob(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->key:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
