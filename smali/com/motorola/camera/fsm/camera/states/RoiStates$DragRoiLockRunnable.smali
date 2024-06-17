.class public final Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
