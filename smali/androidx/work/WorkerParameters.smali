.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mForegroundUpdater:Landroidx/work/ForegroundUpdater;

.field public final mGeneration:I

.field public final mId:Ljava/util/UUID;

.field public final mInputData:Landroidx/work/Data;

.field public final mRunAttemptCount:I

.field public final mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

.field public final mTags:Ljava/util/HashSet;

.field public final mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public final mWorkerFactory:Landroidx/work/WorkerFactory$1;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/List;Landroidx/core/view/MenuHostHelper;IILjava/util/concurrent/ExecutorService;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/WorkerFactory$1;Landroidx/work/impl/utils/WorkForegroundUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->mTags:Ljava/util/HashSet;

    iput-object p4, p0, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    iput p5, p0, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    iput p6, p0, Landroidx/work/WorkerParameters;->mGeneration:I

    iput-object p7, p0, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iput-object p9, p0, Landroidx/work/WorkerParameters;->mWorkerFactory:Landroidx/work/WorkerFactory$1;

    iput-object p10, p0, Landroidx/work/WorkerParameters;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    return-void
.end method
