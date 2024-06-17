.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final feature:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final numPending:I

.field public final progressLevel:I

.field public final progressMax:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    iput p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    iput p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    iput p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    iget v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    iget p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgressUpdates(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progressLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->progressMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
