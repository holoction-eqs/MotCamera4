.class public final Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;
.super Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    iget v5, v0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->$r8$classId:I

    const/4 v12, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    :pswitch_1
    const-string v5, "type"

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "taskId"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "msg"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "retCode"

    invoke-static {v1, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->this$0:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processCtlMsg: message processing not allowed. Either not initialized or shutting down."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v14}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "processCtlMsg: unknown type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;

    invoke-virtual {v1}, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Lkotlinx/serialization/KSerializer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    iget v0, v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    goto :goto_1

    :cond_2
    invoke-static {v14, v2}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processJob: Coprocessor not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->BAD_VALUE:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_1

    :cond_3
    invoke-virtual {v14, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v9

    iget-object v1, v14, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$CoProc;->priority:Lcom/motorola/camera/background/common/Priority;

    move-object v5, v1

    goto :goto_0

    :cond_4
    move-object v5, v12

    :goto_0
    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    new-instance v15, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    iget v1, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v10

    const/4 v11, 0x0

    move-object v0, v15

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;I)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;

    invoke-direct {v0, v14, v1, v15, v12}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessCtlMsg$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_1
    move-object v0, v13

    :goto_2
    return-object v0

    :pswitch_2
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    if-ne v2, v0, :cond_6

    iget-wide v2, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne v1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-static {v2, v3, v0, v12}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled msg type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BgServiceHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    :goto_5
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v1, 0x0

    iget v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->$r8$classId:I

    const-string v6, "JOB_CONTEXT"

    const-string v7, "task_id"

    const/4 v8, 0x2

    const/4 v13, 0x0

    const-string v9, "msg"

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->this$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v5, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v2, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;

    invoke-virtual {v2}, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Lkotlinx/serialization/KSerializer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;

    iget-object v1, v1, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    iget-object v2, v2, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->processNormalProcessCapture(Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v2, "SaveImageServiceHandler"

    if-eq v4, v1, :cond_2

    sget-object v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v1, "processBgProcessCapture: Invalid message type ($type)"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/dynamite/zzo;->parseMsg(Ljava/lang/String;)Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v5, v1, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v8, v1, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v1, v1, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobContext:Ljava/lang/String;

    if-ne v8, v4, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DB_URI"

    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v11, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    const/16 v1, 0x64

    invoke-static {v11, v3, v1, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->-$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "processBgProcessCapture failed: Defaulting to normal process, jobId = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ReturnCode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v5, v1}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->processNormalProcessCapture(Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    check-cast v11, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    const/16 v1, 0x12c

    invoke-static {v11, v3, v1, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->-$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    :goto_0
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    :pswitch_1
    const-string v0, "type"

    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskId"

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retCode"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    move-object v15, v11

    check-cast v15, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v0, v15, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->messageProcessingAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMsg: message processing not allowed. Either not initialized or shutting down."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->NO_INIT:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_9

    :cond_5
    invoke-virtual {v15}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->checkWatchDog()V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v10, :cond_7

    if-eq v0, v8, :cond_6

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processMsg: unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :pswitch_2
    new-instance v6, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    move-object v0, v6

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;

    invoke-direct {v0, v15, v12, v6, v13}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJobComplete$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_1
    :pswitch_3
    move-object/from16 p0, v14

    goto/16 :goto_6

    :cond_7
    :pswitch_4
    iget-object v0, v15, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mClientMap:Ljava/util/LinkedHashMap;

    iget v2, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    sget-object v6, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    if-eqz v2, :cond_a

    iget v2, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    if-eqz v2, :cond_9

    sget-object v7, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SOURCE:Lcom/motorola/camera/background/common/ClientType;

    if-eq v2, v7, :cond_8

    if-ne v2, v6, :cond_9

    :cond_8
    move v2, v10

    goto :goto_2

    :cond_9
    move v2, v1

    :goto_2
    if-eqz v2, :cond_a

    move v2, v10

    goto :goto_3

    :cond_a
    move v2, v1

    :goto_3
    iget v7, v3, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v8, :cond_c

    iget-object v8, v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->type:Lcom/motorola/camera/background/common/ClientType;

    if-eqz v8, :cond_c

    sget-object v9, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SINK:Lcom/motorola/camera/background/common/ClientType;

    if-eq v8, v9, :cond_b

    if-ne v8, v6, :cond_c

    :cond_b
    move v6, v10

    goto :goto_4

    :cond_c
    move v6, v1

    :goto_4
    if-eqz v6, :cond_d

    move v1, v10

    :cond_d
    invoke-static {v15, v4}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->access$findValidCoProc(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;Lcom/motorola/camera/background/common/msg/MsgType;)Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v6

    if-eqz v6, :cond_10

    if-eqz v2, :cond_10

    if-nez v1, :cond_e

    goto/16 :goto_7

    :cond_e
    iget v1, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$Client;->priority:Lcom/motorola/camera/background/common/Priority;

    move-object v7, v0

    goto :goto_5

    :cond_f
    move-object v7, v13

    :goto_5
    invoke-static {v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15, v6}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcInterface(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    move-result-object v9

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v15, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mCoProcMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "processJob: callerId="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " taskId="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " coProc="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " c="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->startForegroundService()V

    new-instance v11, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    iget v0, v6, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v6}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->getCoProcConnection(Lcom/motorola/camera/background/common/RegisteredProcDef;)Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;

    move-result-object v10

    const/16 v18, 0x0

    move-object v0, v11

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v7

    move-wide/from16 v6, v16

    move-object/from16 p0, v14

    move-object v14, v11

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;-><init>(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;JLjava/lang/Integer;Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;I)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;

    invoke-direct {v0, v15, v12, v14, v13}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler$handleProcessJob$1;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;ILcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_6
    move-object/from16 v14, p0

    goto :goto_8

    :cond_10
    :goto_7
    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget v1, v3, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processJob: clients and/or coprocessor not registered clientSrc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clientDst="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coProc="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/motorola/camera/background/common/ReturnCode;->OBJECT_MISSING:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_8
    move-object v0, v14

    :goto_9
    return-object v0

    :pswitch_5
    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    return-object v0

    :goto_a
    if-nez v4, :cond_11

    const/4 v0, -0x1

    goto :goto_b

    :cond_11
    sget-object v0, Lcom/motorola/camera/service/CameraForegroundProcessingService$JniClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    :goto_b
    const-string v2, "CameraForegroundProcessingService"

    if-eq v0, v10, :cond_12

    if-eq v0, v8, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processMsg, Unknown message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    goto/16 :goto_f

    :cond_12
    check-cast v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;

    sget v0, Lcom/motorola/camera/service/CameraForegroundProcessingService;->$r8$clinit:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_13

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    iget-wide v9, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    if-nez v5, :cond_14

    const-string v0, "handleJobComplete, message is null"

    goto :goto_d

    :cond_14
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/dynamite/zzo;->parseMsg(Ljava/lang/String;)Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleJobComplete, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;->jobs:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_15

    iget-wide v9, v3, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_c

    :cond_15
    move-object v9, v13

    :goto_c
    invoke-virtual {v4, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;

    if-nez v4, :cond_16

    const-string v0, "handleJobComplete, jobHolder is null"

    :goto_d
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    goto :goto_f

    :cond_16
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    const-string v6, "applicationContext"

    iget-object v7, v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;->bgJobService:Lcom/motorola/camera/service/BgJobService;

    iget-object v9, v4, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;->mediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-ne v5, v0, :cond_17

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v2, v5, v9}, Lcom/motorola/camera/service/BgJobService;->saveBgProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_e

    :cond_17
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v2, v5, v9}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :goto_e
    sget-object v2, Lcom/motorola/camera/background/provider/FileDataContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, v4, Lcom/motorola/camera/service/CameraForegroundProcessingService$JobHolder;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v4, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v11, v4, v5}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteTagData(Landroid/content/Context;J)I

    new-instance v2, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;

    invoke-direct {v2, v3, v11, v13}, Lcom/motorola/camera/service/CameraForegroundProcessingService$handleJobComplete$1;-><init>(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/service/CameraForegroundProcessingService;Lkotlin/coroutines/Continuation;)V

    iget-object v3, v11, Lcom/motorola/camera/service/CameraForegroundProcessingService;->mainDispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {v11, v3, v1, v2, v8}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public final processNormalProcessCapture(Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DB_URI"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "task_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "JOB_CONTEXT"

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    const/16 p2, 0xc8

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->-$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    return-void
.end method
