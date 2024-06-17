.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method

.method private declared-synchronized processCtlMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceImpl$MsgHandler(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 6

    const-string v0, "processCtlMsg: unknown type: "

    monitor-enter p0

    :try_start_0
    const-string v1, "type"

    invoke-static {p4, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskId"

    invoke-static {p3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {p5, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retCode"

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 p2, 0x5

    if-eq v1, p2, :cond_1

    const/16 p2, 0xc

    if-eq v1, p2, :cond_4

    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {p2, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleJobAllCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;I)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget-object p1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    iget v0, p3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$Client;->client:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v0, :cond_3

    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v1, p1, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_3
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_4
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {p2, p1, p3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleJobCancel(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/TaskId;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized processCtlMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceJni$MsgHandler(Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 11

    const-string v0, "processCtlMsg: unknown type: "

    monitor-enter p0

    :try_start_0
    const-string v1, "type"

    invoke-static {p3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskId"

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {p4, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "retCode"

    invoke-static {p1, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    const/16 p4, 0xc

    if-eq p1, p4, :cond_0

    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    iget-object p3, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    new-instance p4, Lcom/motorola/camera/background/common/JobId;

    iget v1, p2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-wide v2, p2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v4, p2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget v6, p2, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v7, p2, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    iget v8, p2, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget-boolean v9, p2, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-object v10, p2, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move-object v0, p4

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJobCancel(Lcom/motorola/camera/background/common/JobId;)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->access$getMap$cp()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/ReturnCode;

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized processMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceImpl$MsgHandler(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 3

    const-string v0, "processMsg: unknown type: "

    monitor-enter p0

    :try_start_0
    const-string v1, "type"

    invoke-static {p4, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskId"

    invoke-static {p3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {p5, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retCode"

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    iget v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 p1, 0xb

    if-eq v1, p1, :cond_1

    sget-object p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {p1, p4, p3, p5, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleJobComplete(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-static {p2, p1, p4, p3, p5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->access$handleProcessJob(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized processMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceJni$MsgHandler(Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "processMsg: unknown type: "

    monitor-enter p0

    :try_start_0
    const-string v5, "type"

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "taskId"

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "msg"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "retCode"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    invoke-direct {v4, v0, v2, v3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->getMJobsList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lcom/motorola/camera/settings/CacheBehavior;->parseMsg(Ljava/lang/String;)Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    iget-wide v3, v0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v3, v4}, Lcom/motorola/camera/shared/PostProcTransferData;->retrievePostProcTransferDataForForegroundProcessing(J)Lcom/motorola/camera/shared/PostProcTransferData;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    iget-object v5, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    new-instance v15, Lcom/motorola/camera/background/common/JobId;

    iget v7, v0, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-wide v8, v0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v10, v0, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget v12, v0, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v13, v0, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    iget v14, v0, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget-boolean v6, v0, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    move-object/from16 p1, v4

    iget-object v4, v0, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move/from16 v16, v6

    move-object v6, v15

    move-object v0, v15

    move/from16 v15, v16

    move-object/from16 v16, v4

    invoke-direct/range {v6 .. v16}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    invoke-virtual {v5, v0, v2, v3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJob(Lcom/motorola/camera/background/common/JobId;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->access$getMap$cp()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/ReturnCode;

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_1
    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq v0, v2, :cond_2

    iget-object v2, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-virtual {v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->getMJobsList()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-direct/range {p0 .. p5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->processCtlMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceImpl$MsgHandler(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->processCtlMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceJni$MsgHandler(Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-direct/range {p0 .. p5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->processMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceImpl$MsgHandler(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;->processMsg$com$motorola$camera$background$coprocessor$postproc$PostProcServiceJni$MsgHandler(Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
