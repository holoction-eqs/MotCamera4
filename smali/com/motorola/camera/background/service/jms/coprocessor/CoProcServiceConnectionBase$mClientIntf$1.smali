.class public final Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic $identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public final synthetic $serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;Lcom/motorola/camera/background/common/RegisteredProcDef;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;->$serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;->$identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 7

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskId"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retCode"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;->$serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;->$identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object p0, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " processCtlMsg() exception: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method

.method public final processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 7

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskId"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retCode"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;->$serviceClientIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;->$identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object p0, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " processMsg() exception: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    return-object p0
.end method
