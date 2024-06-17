.class public abstract Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public currentState:Ljava/lang/Object;

.field public final listeners:Ljava/util/LinkedHashSet;

.field public final lock:Ljava/lang/Object;

.field public final taskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public abstract getInitialState()Ljava/lang/Object;
.end method

.method public final removeListener(Landroidx/work/impl/constraints/controllers/ConstraintController;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->stopTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object v1, v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v3, 0x11

    invoke-direct {v2, v3, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method
