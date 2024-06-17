.class public final Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;
.super Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
