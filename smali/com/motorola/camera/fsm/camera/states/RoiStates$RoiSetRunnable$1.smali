.class public final Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocusMoving(Z)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    sget v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;->$r8$clinit:I

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    invoke-direct {p1, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onFocusModeChanged(I)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_AUTO_FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
