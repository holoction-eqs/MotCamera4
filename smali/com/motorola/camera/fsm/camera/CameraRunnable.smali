.class public abstract Lcom/motorola/camera/fsm/camera/CameraRunnable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mIsRunning:Z

.field public mState:Lcom/motorola/camera/fsm/camera/StateKey;


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    return-void
.end method

.method public abstract run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method
