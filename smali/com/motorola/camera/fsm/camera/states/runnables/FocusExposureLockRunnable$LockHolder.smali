.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFocalLength:F

.field public mFocusLockTime:J

.field public mIsComplete:Z

.field public mLastAeFrameNum:J

.field public mLastAeState:I

.field public mLastAfState:I

.field public mOneShotPartialReceived:Z

.field public mOneShotReceived:Z

.field public mTimeoutRunnable:Landroidx/work/Worker$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotPartialReceived:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotReceived:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    return-void
.end method
