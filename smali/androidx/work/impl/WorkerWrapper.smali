.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mConfiguration:Landroidx/work/Configuration;

.field public final mDependencyDao:Lcom/airbnb/lottie/model/MutablePair;

.field public final mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

.field public final mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

.field public volatile mInterrupted:Z

.field public mResult:Landroidx/work/ListenableWorker$Result;

.field public final mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

.field public final mSchedulers:Ljava/util/List;

.field public final mTags:Ljava/util/List;

.field public final mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field public mWorkDescription:Ljava/lang/String;

.field public final mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field public final mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public final mWorkSpecId:Ljava/lang/String;

.field public final mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public mWorker:Landroidx/work/ListenableWorker;

.field public final mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>(Landroidx/work/Data;)V

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Landroid/content/Context;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mSchedulers:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mConfiguration:Landroidx/work/Configuration;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Lcom/airbnb/lottie/model/MutablePair;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Lcom/airbnb/lottie/model/MutablePair;

    iget-object p1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mTags:Ljava/util/List;

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final handleResult(Landroidx/work/ListenableWorker$Result;)V
    .locals 11

    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Success;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result SUCCESS for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v5, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    check-cast v5, Landroidx/work/ListenableWorker$Result$Success;

    iget-object v5, v5, Landroidx/work/ListenableWorker$Result$Success;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v1, v0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/MutablePair;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v8

    sget-object v9, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v8, v9, :cond_1

    invoke-virtual {p1, v7}, Lcom/airbnb/lottie/model/MutablePair;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting status to enqueued for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v8, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueuedTime(JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v4}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v4}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    throw p1

    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$Result$Retry;

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Worker result RETRY for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    goto :goto_2

    :cond_4
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result FAILURE for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodicAndResolve()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    :goto_2
    return-void
.end method

.method public final onWorkFinished()V
    .locals 5

    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/WorkQuery;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/work/WorkQuery;->delete(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkerWrapper;->handleResult(Landroidx/work/ListenableWorker$Result;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/Scheduler;

    invoke-interface {v4, v1}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    invoke-static {p0, v2, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final rescheduleAndResolve()V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v4, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueuedTime(JLjava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    throw v0
.end method

.method public final resetPeriodicAndResolve()V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setLastEnqueuedTime(JLjava/lang/String;)V

    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1, v4, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->incrementPeriodCount(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    throw v0
.end method

.method public final resolve(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->hasUnfinishedWork()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    check-cast v0, Landroidx/work/impl/Processor;

    iget-object v2, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, v0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    check-cast v0, Landroidx/work/impl/Processor;

    iget-object v2, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, v0, Landroidx/work/impl/Processor;->mForegroundWorkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/work/impl/Processor;->stopForegroundService()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_2
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p1
.end method

.method public final resolveIncorrectStatus()V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    const-string v3, "Status for "

    sget-object v4, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is RUNNING; not doing any work and rescheduling for later execution"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void
.end method

.method public final run()V
    .locals 28

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tags={ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, " } ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_c

    :cond_2
    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v7, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v9, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    sget-object v10, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    if-eq v0, v7, :cond_3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v4, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-ne v0, v7, :cond_4

    iget v0, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v0, :cond_4

    move v0, v5

    goto :goto_2

    :cond_4
    move v0, v8

    :goto_2
    if-eqz v0, :cond_6

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gez v0, :cond_6

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    const-string v2, "Delaying execution for %s because it is being executed before schedule."

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_3
    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto/16 :goto_c

    :cond_6
    :try_start_2
    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    iget-object v11, v1, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v12, v1, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    if-eqz v0, :cond_7

    iget-object v0, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    :goto_4
    move-object v15, v0

    goto/16 :goto_9

    :cond_7
    iget-object v0, v12, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory$1;

    iget-object v13, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/work/InputMerger;->TAG:Ljava/lang/String;

    :try_start_3
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v14, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/InputMerger;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v8

    const-string v14, "Trouble instantiating + "

    invoke-static {v14, v13}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroidx/work/InputMerger;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v14, v13, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_8

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Input Merger "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v10

    goto/16 :goto_a

    :cond_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v5, v13}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v13

    if-nez v2, :cond_9

    invoke-virtual {v13, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_6

    :cond_9
    invoke-virtual {v13, v5, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_6
    iget-object v5, v11, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v5, Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_a

    const/4 v15, 0x0

    goto :goto_8

    :cond_a
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    :goto_8
    invoke-static {v15}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v13}, Landroidx/room/RoomSQLiteQuery;->release()V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v8}, Landroidx/work/InputMerger;->merge(Ljava/util/ArrayList;)Landroidx/work/Data;

    move-result-object v0

    goto/16 :goto_4

    :goto_9
    new-instance v0, Landroidx/work/WorkerParameters;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v14

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    iget v8, v4, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v4, v4, Landroidx/work/impl/model/WorkSpec;->generation:I

    iget-object v13, v12, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v24, v7

    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    move-object/from16 v25, v2

    iget-object v2, v12, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory$1;

    new-instance v16, Landroidx/work/impl/utils/WorkProgressUpdater;

    move-object/from16 v26, v11

    new-instance v11, Landroidx/work/impl/utils/WorkForegroundUpdater;

    move-object/from16 v16, v13

    iget-object v13, v1, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    move-object/from16 v27, v10

    iget-object v10, v1, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-direct {v11, v6, v13, v10}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    check-cast v3, Ljava/util/List;

    move-object/from16 v20, v16

    move-object v13, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    move-object/from16 v23, v11

    invoke-direct/range {v13 .. v23}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/List;Landroidx/core/view/MenuHostHelper;IILjava/util/concurrent/ExecutorService;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/WorkerFactory$1;Landroidx/work/impl/utils/WorkForegroundUpdater;)V

    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_c

    iget-object v2, v12, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v9, v0}, Landroidx/work/WorkerFactory$1;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    :cond_c
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_d

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_d
    iget-boolean v3, v2, Landroidx/work/ListenableWorker;->mUsed:Z

    if-eqz v3, :cond_e

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    const-string v2, "Received an already-used Worker "

    const-string v3, "; Worker Factory should return new instances"

    invoke-static {v2, v9, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v27

    invoke-virtual {v0, v3, v2}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    goto/16 :goto_c

    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/work/ListenableWorker;->mUsed:Z

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->beginTransaction()V

    move-object/from16 v2, v25

    move-object/from16 v4, v26

    :try_start_5
    invoke-virtual {v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v5

    move-object/from16 v7, v24

    if-ne v5, v7, :cond_f

    sget-object v5, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    invoke-virtual {v4, v5, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_c

    :cond_10
    new-instance v2, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    iget-object v7, v0, Landroidx/work/WorkerParameters;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/utils/WorkForegroundRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    iget-object v0, v10, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    invoke-virtual {v0, v2}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v3, 0x10

    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/tasks/zzt;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/google/android/gms/tasks/zzt;-><init>(I)V

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v4, v0, v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroidx/work/Worker$2;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v10, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    invoke-virtual {v2, v0, v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    new-instance v2, Landroidx/work/Worker$2;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1, v0}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v10, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {v4, v2, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_c

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    :goto_c
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v13}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0
.end method

.method public final setFailedAndResolve()V
    .locals 8

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v6

    sget-object v7, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v6, v7, :cond_0

    sget-object v6, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-virtual {v5, v6, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/model/MutablePair;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    check-cast v3, Landroidx/work/ListenableWorker$Result$Failure;

    iget-object v3, v3, Landroidx/work/ListenableWorker$Result$Failure;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v5, v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v2}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    invoke-virtual {p0, v2}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    throw v0
.end method

.method public final tryCheckForInterruptionAndResolve()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Work interrupted for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method
