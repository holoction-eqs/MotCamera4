.class public final Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

.field public final id:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public final priority:Lcom/motorola/camera/background/common/Priority;

.field public final procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoProc(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->id:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", procIntf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->procIntf:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->connection:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
