.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final id:Lcom/motorola/camera/background/common/TaskId;

.field public final msgType:Lcom/motorola/camera/background/common/msg/MsgType;

.field public final rules:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msgType"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rules"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iput-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iput-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    iget-object v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-object v3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v3, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/TaskId;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JobRequest(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
