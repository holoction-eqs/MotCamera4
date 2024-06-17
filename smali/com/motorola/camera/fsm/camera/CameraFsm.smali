.class public final Lcom/motorola/camera/fsm/camera/CameraFsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/iCameraFsm;
.implements Lcom/motorola/camera/fsm/camera/iFsmLoader;


# instance fields
.field public final mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

.field public mDelayStates:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/ChangeEvent;Landroidx/media3/common/Format$$ExternalSyntheticLambda0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    new-instance v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;-><init>(Lcom/motorola/camera/fsm/camera/iCameraFsm;)V

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lcom/motorola/camera/fsm/camera/iFsmLoader;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0, p2, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 4

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Dump ERROR Stack Trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFsm"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mSyncronous:Z

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean p0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    return p0

    :cond_1
    iget-object v0, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method
