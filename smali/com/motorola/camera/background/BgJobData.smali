.class public final Lcom/motorola/camera/background/BgJobData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final action:I

.field public final bundle:Landroid/os/Bundle;

.field public retryCount:I

.field public final taskId:Lcom/motorola/camera/background/common/TaskId;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iput p2, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    iput-object p3, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/BgJobData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/BgJobData;

    iget-object v1, p1, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v3, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    iget v3, p1, Lcom/motorola/camera/background/BgJobData;->action:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    iget p1, p1, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/TaskId;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BgJobData(taskId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/background/BgJobData;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", retryCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
