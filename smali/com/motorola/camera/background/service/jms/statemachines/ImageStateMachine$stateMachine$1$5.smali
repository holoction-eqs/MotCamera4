.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    const-string v1, "$this$state"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;->INSTANCE$2:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$ProcessOwner$CoProc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->mProcessOwner:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznj;

    return-object v0

    :goto_0
    check-cast p1, Lcom/tinder/StateMachine$Transition;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/tinder/StateMachine$Transition$Valid;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, v1, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    instance-of v1, v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.background.service.jms.statemachines.StateMachineBase.Companion.Command.ListOfCommands{ com.motorola.camera.background.service.jms.statemachines.StateMachineBaseKt.Command_ListOfCommands }"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;->commands:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    goto :goto_2

    :cond_2
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    :cond_3
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
