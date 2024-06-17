.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    sget-object v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$1:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    iget v3, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$r8$classId:I

    iget-object v4, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$this_state:Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    iget-object v5, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iget-object v6, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const-string v7, "it"

    const-string v8, "$this$on"

    packed-switch v3, :pswitch_data_0

    move-object/from16 v17, v4

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    move-object/from16 v1, p2

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->jobResult:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object v3, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v13, v3, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v7, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v8, v7, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v11, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v9, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v12, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    new-instance v1, Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-object v7, v1

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v7, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget v8, v3, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-direct {v7, v8, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    invoke-virtual {v6, v13, v14, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    iget-wide v8, v3, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {v6, v8, v9}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v7}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    move-object/from16 v1, p2

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v3, v1, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v7, v3, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;

    invoke-direct {v3, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessCtlMsg;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    invoke-virtual {v6, v7, v8, v1}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    invoke-virtual {v6, v7, v8}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    move-object/from16 v3, p2

    check-cast v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    invoke-static {v1, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->jobResult:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object v14, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-object v15, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    iget-object v13, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-wide v11, v14, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    sget-object v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v9, v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v8, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$2$1$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object v7, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->result:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v8, v8, v10

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    :goto_0
    move-object/from16 v21, v7

    new-instance v7, Lcom/motorola/camera/background/common/msg/MsgParameters;

    move-object v8, v7

    move-object/from16 v10, v21

    move-object/from16 p1, v1

    move-object/from16 v22, v2

    move-wide v1, v11

    move-object v11, v14

    move-object v12, v13

    move-object/from16 v19, v13

    move-object v13, v15

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v8, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget v9, v14, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-direct {v8, v9, v7}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    sget-object v7, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    invoke-virtual {v6, v1, v2, v7}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget v3, v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->callerId:I

    move-object v6, v15

    move-object v15, v0

    move-wide/from16 v16, v1

    move/from16 v18, v3

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v21}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p1

    invoke-static {v1, v0, v8}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    move-object/from16 v2, p2

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v13, v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    sget-object v14, Lcom/motorola/camera/background/common/ReturnCode;->CANCELED:Lcom/motorola/camera/background/common/ReturnCode;

    iget v15, v13, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    new-instance v7, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    invoke-direct {v7}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;-><init>()V

    sget-object v8, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v9, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;

    invoke-virtual {v9}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v11, Lcom/motorola/camera/background/common/msg/MsgParameters;

    sget-object v10, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v8, v10, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v16, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object v7, v11

    move-object v9, v14

    move-object/from16 p0, v0

    move-object v0, v10

    move-object v10, v13

    move-object/from16 v17, v4

    move-object v4, v11

    move-object/from16 v11, v16

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v7, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    invoke-direct {v7, v15, v4}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v12, v2, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    new-instance v2, Lcom/motorola/camera/background/common/msg/MsgParameters;

    iget v8, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;

    iget v4, v13, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-direct {v0, v4, v2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ProcessJob;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    iget-wide v7, v13, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual {v6, v7, v8, v0}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    invoke-virtual {v6, v7, v8}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    invoke-direct {v1, v3}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object/from16 v17, v4

    move-object/from16 v2, p1

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    move-object/from16 v3, p2

    check-cast v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    invoke-static {v2, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;->jobRequest:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;

    iget-object v11, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v14, v11, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v13, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    iget-object v12, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->rules:Ljava/lang/String;

    sget-object v24, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    new-instance v8, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;

    invoke-direct {v8, v7}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$WorkerProcessJob;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v7, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobRequest;->retrySource:I

    if-nez v7, :cond_1

    iget v7, v11, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    new-instance v8, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;

    invoke-direct {v8}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;-><init>()V

    sget-object v9, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v10, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;

    invoke-virtual {v10}, Lcom/motorola/camera/background/common/msg/MsgProcessJobAck$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v10, Lcom/motorola/camera/background/common/msg/MsgParameters;

    sget-object v8, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v9, v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v18, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_ACK:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object v8, v10

    move-object/from16 p1, v2

    move-object v2, v10

    move-object/from16 v10, v24

    move-object/from16 v23, v12

    move-object/from16 v12, v18

    move-object/from16 v22, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/background/common/msg/MsgParameters;-><init>(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)V

    new-instance v8, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;

    invoke-direct {v8, v7, v2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$AckClient;-><init>(ILcom/motorola/camera/background/common/msg/MsgParameters;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 p1, v2

    move-object/from16 v23, v12

    move-object/from16 v22, v13

    :goto_1
    sget-object v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    invoke-virtual {v6, v14, v15, v2}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget v2, v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;->callerId:I

    move-object/from16 v18, v0

    move-wide/from16 v19, v14

    move/from16 v21, v2

    invoke-virtual/range {v18 .. v24}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    invoke-direct {v1, v4}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object v0

    return-object v0

    :goto_2
    move-object/from16 v1, p1

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    move-object/from16 v2, p2

    check-cast v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    invoke-static {v1, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->jobResult:Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;

    iget-object v4, v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->taskId:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v8, v4, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget-object v11, v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v13, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object v12, v3, Lcom/motorola/camera/background/service/jms/JobMgrScheduler$JobResult;->resultDescription:Ljava/lang/String;

    new-instance v3, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;

    invoke-direct {v3, v8, v9, v4}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$RemoveJob;-><init>(JLcom/motorola/camera/background/common/TaskId;)V

    sget-object v4, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    invoke-virtual {v6, v8, v9, v4}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateState(JLcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;)V

    iget-object v7, v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget v10, v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;->callerId:I

    invoke-virtual/range {v7 .. v13}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMsgInfo(JILcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$2:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v3}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
