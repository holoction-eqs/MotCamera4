.class public final Lcom/motorola/camera/fsm/camera/CameraState;
.super Lcom/motorola/camera/fsm/State;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState$1;)V
    .locals 9

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v5, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    iget-object v7, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    iget-boolean v8, p1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/fsm/State;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/State;Ljava/util/LinkedHashSet;Z)V

    return-void
.end method

.method public static builder()Lcom/motorola/camera/fsm/camera/CameraState$1;
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    return-object v0
.end method
