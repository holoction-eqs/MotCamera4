.class public final Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

.field public final mWorkTimer:Landroidx/work/impl/utils/WorkTimer;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/WorkTimer;Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v0, v0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkTimer;->mTimerMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkTimer;->mListeners:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    check-cast v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exceeded time limits on execution for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance v2, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    invoke-virtual {p0, v2}, Landroidx/work/impl/utils/SerialExecutorImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    const-string v2, "WrkTimerRunnable"

    const-string v3, "Timer with %s is already marked as complete."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
