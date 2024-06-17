.class public final Landroidx/work/impl/WorkManagerImpl;
.super Landroidx/work/WorkManager;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

.field public static sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public mConfiguration:Landroidx/work/Configuration;

.field public mContext:Landroid/content/Context;

.field public mForceStopRunnableCompleted:Z

.field public mPreferenceUtils:Lcom/google/common/base/Joiner;

.field public mProcessor:Landroidx/work/impl/Processor;

.field public volatile mRemoteWorkManager:Landroidx/work/multiprocess/RemoteWorkManager;

.field public mRescheduleReceiverResult:Landroid/content/BroadcastReceiver$PendingResult;

.field public mSchedulers:Ljava/util/List;

.field public final mTrackers:Landroidx/work/WorkQuery$Builder;

.field public mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field public mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "queryExecutor"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroidx/work/impl/WorkDatabase;

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/room/RoomDatabase$Builder;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v6}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iput-boolean v5, v1, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    goto :goto_0

    :cond_0
    const-string v1, "androidx.work.workdb"

    invoke-static {v2, v4, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-instance v4, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Landroidx/room/RoomDatabase$Builder;->factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    :goto_0
    iput-object v3, v1, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    sget-object v3, Landroidx/work/impl/CleanupCallback;->INSTANCE:Landroidx/work/impl/CleanupCallback;

    iget-object v4, v1, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v5, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_1_2;->INSTANCE:Landroidx/work/impl/Migration_1_2;

    const/4 v9, 0x0

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    const/4 v6, 0x3

    const/4 v10, 0x2

    invoke-direct {v4, v2, v10, v6}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_3_4;->INSTANCE:Landroidx/work/impl/Migration_3_4;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_4_5;->INSTANCE:Landroidx/work/impl/Migration_4_5;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    const/4 v6, 0x5

    const/4 v11, 0x6

    invoke-direct {v4, v2, v6, v11}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_6_7;->INSTANCE:Landroidx/work/impl/Migration_6_7;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_7_8;->INSTANCE:Landroidx/work/impl/Migration_7_8;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    sget-object v4, Landroidx/work/impl/Migration_8_9;->INSTANCE:Landroidx/work/impl/Migration_8_9;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    invoke-direct {v4, v2}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v3, v5, [Landroidx/room/migration/Migration;

    new-instance v4, Landroidx/work/impl/WorkMigration9To10;

    const/16 v6, 0xa

    const/16 v11, 0xb

    invoke-direct {v4, v2, v6, v11}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v2, v5, [Landroidx/room/migration/Migration;

    sget-object v3, Landroidx/work/impl/Migration_11_12;->INSTANCE:Landroidx/work/impl/Migration_11_12;

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v2, v5, [Landroidx/room/migration/Migration;

    sget-object v3, Landroidx/work/impl/Migration_12_13;->INSTANCE:Landroidx/work/impl/Migration_12_13;

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    new-array v2, v5, [Landroidx/room/migration/Migration;

    sget-object v3, Landroidx/work/impl/Migration_15_16;->INSTANCE:Landroidx/work/impl/Migration_15_16;

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)V

    iput-boolean v9, v1, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iput-boolean v5, v1, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/work/impl/WorkDatabase;

    invoke-direct {p0}, Landroidx/work/WorkManager;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroidx/work/Logger$LogcatLogger;

    iget v3, v7, Landroidx/work/Configuration;->mLoggingLevel:I

    invoke-direct {v2, v3}, Landroidx/work/Logger$LogcatLogger;-><init>(I)V

    sget-object v3, Landroidx/work/Logger$LogcatLogger;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sput-object v2, Landroidx/work/Logger$LogcatLogger;->sLogger:Landroidx/work/Logger$LogcatLogger;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v2, v1, v8}, Landroidx/work/WorkQuery$Builder;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    iput-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->mTrackers:Landroidx/work/WorkQuery$Builder;

    new-array v3, v10, [Landroidx/work/impl/Scheduler;

    sget-object v4, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    new-instance v4, Landroidx/work/impl/background/systemjob/SystemJobScheduler;

    invoke-direct {v4, v1, p0}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V

    const-class v6, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {v1, v6, v5}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    sget-object v10, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    const-string v13, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v6, v10, v13}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v9

    new-instance v4, Landroidx/work/impl/background/greedy/GreedyScheduler;

    invoke-direct {v4, v1, v7, v2, p0}, Landroidx/work/impl/background/greedy/GreedyScheduler;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/WorkQuery$Builder;Landroidx/work/impl/WorkManagerImpl;)V

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v13, Landroidx/work/impl/Processor;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v12

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/Processor;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    iput-object v7, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iput-object v8, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iput-object v12, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iput-object v10, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    iput-object v13, v0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    new-instance v2, Lcom/google/common/base/Joiner;

    invoke-direct {v2, v12, v11}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->mPreferenceUtils:Lcom/google/common/base/Joiner;

    iput-boolean v9, v0, Landroidx/work/impl/WorkManagerImpl;->mForceStopRunnableCompleted:Z

    invoke-static {v1}, Landroidx/work/impl/WorkManagerImpl$Api24Impl;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    new-instance v3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v3, v1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V

    invoke-virtual {v2, v3}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;
    .locals 3

    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Landroidx/work/Configuration$Provider;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/work/Configuration$Provider;

    check-cast v1, Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/work/Configuration$Builder;

    invoke-direct {v2}, Landroidx/work/Configuration$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    new-instance v1, Landroidx/work/Configuration;

    invoke-direct {v1, v2}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    invoke-static {p0, v1}, Landroidx/work/impl/WorkManagerImpl;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V

    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3
.end method

.method public static initialize(Landroid/content/Context;Landroidx/work/Configuration;)V
    .locals 4

    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    if-nez v1, :cond_2

    new-instance v1, Landroidx/work/impl/WorkManagerImpl;

    new-instance v2, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object v3, p1, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/WorkManagerImpl;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    sput-object v1, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    :cond_2
    sget-object p0, Landroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Landroidx/work/impl/WorkManagerImpl;

    sput-object p0, Landroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Landroidx/work/impl/WorkManagerImpl;

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final enqueue(Ljava/util/List;)Landroidx/work/Operation;
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/work/impl/WorkContinuationImpl;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/Operation;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enqueue needs at least one WorkRequest."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onForceStopRunnableCompleted()V
    .locals 2

    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/WorkManagerImpl;->mForceStopRunnableCompleted:Z

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Landroid/content/BroadcastReceiver$PendingResult;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final rescheduleEligibleWork()V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->TAG:Ljava/lang/String;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->getPendingJobs(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelJobById(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v0

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    check-cast v3, Landroidx/collection/MapCollections;

    invoke-virtual {v3}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections;

    invoke-virtual {v0, v3}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {v0, v1, p0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections;

    invoke-virtual {v0, v3}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p0
.end method

.method public final startWork(Landroidx/work/impl/StartStopToken;Landroidx/core/view/MenuHostHelper;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$7;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final tryInitializeMultiProcessSupport()V
    .locals 6

    :try_start_0
    const-class v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroidx/work/impl/WorkManagerImpl;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/multiprocess/RemoteWorkManager;

    iput-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mRemoteWorkManager:Landroidx/work/multiprocess/RemoteWorkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->TAG:Ljava/lang/String;

    iget v0, v0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    const-string v0, "Unable to initialize multi-process support"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
