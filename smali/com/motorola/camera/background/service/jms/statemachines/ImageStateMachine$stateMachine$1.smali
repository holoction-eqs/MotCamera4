.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->invoke(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V

    return-object v0

    .line 2
    :pswitch_1
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->invoke(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V

    return-object v0

    .line 3
    :pswitch_2
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->invoke(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V

    return-object v0

    .line 4
    :pswitch_3
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder;

    const-string v1, "$this$create"

    .line 5
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    .line 6
    iput-object v1, p1, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V

    .line 8
    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    const-class v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    invoke-direct {v4, v5}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p1, v4, v1}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;

    const/4 v4, 0x2

    invoke-direct {v1, v2, p0, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V

    .line 10
    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    const-class v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    invoke-direct {v4, v5}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p1, v4, v1}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;

    const/4 v4, 0x3

    invoke-direct {v1, v2, p0, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V

    .line 12
    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    const-class v5, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    invoke-direct {v4, v5}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 13
    invoke-virtual {p1, v4, v1}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;

    const/4 v4, 0x4

    invoke-direct {v1, v2, p0, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V

    .line 14
    new-instance v2, Lcom/tinder/StateMachine$Matcher;

    const-class v4, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    invoke-direct {v2, v4}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 15
    invoke-virtual {p1, v2, v1}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;-><init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V

    .line 16
    new-instance v2, Lcom/tinder/StateMachine$Matcher;

    const-class v4, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    invoke-direct {v2, v4}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 17
    invoke-virtual {p1, v2, v1}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$11:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    .line 18
    new-instance v2, Lcom/tinder/StateMachine$Matcher;

    const-class v4, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    invoke-direct {v2, v4}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 19
    invoke-virtual {p1, v2, v1}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;-><init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V

    .line 20
    iget-object p0, p1, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 21
    :goto_0
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->invoke(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$r8$classId:I

    const-class v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJobComplete;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    const-string v4, "$this$state"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 22
    :pswitch_0
    invoke-static {p1, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v3, p1, v1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;I)V

    .line 23
    new-instance p0, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {p0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 24
    invoke-virtual {p1, p0, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 25
    :pswitch_1
    invoke-static {p1, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;

    const/4 v4, 0x2

    invoke-direct {v0, p0, v3, p1, v4}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;I)V

    .line 26
    new-instance v4, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {v4, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 27
    invoke-virtual {p1, v4, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v3, p1, v2}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;I)V

    .line 28
    new-instance p0, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {p0, v1}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p1, p0, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 30
    :pswitch_2
    invoke-static {p1, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v3, p1, v2}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;I)V

    .line 31
    new-instance v2, Lcom/tinder/StateMachine$Matcher;

    const-class v4, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onProcessJob;

    invoke-direct {v2, v4}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p1, v2, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, p1, v2}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;I)V

    .line 33
    new-instance p0, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {p0, v1}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p1, p0, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 35
    :goto_0
    invoke-static {p1, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v3, p1, v1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;I)V

    .line 36
    new-instance p0, Lcom/tinder/StateMachine$Matcher;

    invoke-direct {p0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;)V

    .line 37
    invoke-virtual {p1, p0, v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
