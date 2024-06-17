.class public final Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDuration:J

.field public mLastShutterTime:J

.field public mShutterBlocked:Z

.field public mStartLastShutterTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mShutterBlocked:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mLastShutterTime:J

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mStartLastShutterTime:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized setBlockShutter(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mShutterBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
