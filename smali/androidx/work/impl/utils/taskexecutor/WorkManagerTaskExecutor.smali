.class public final Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

.field public final mMainThreadExecutor:Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

.field public final mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    new-instance v0, Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-direct {v0, p1}, Landroidx/work/impl/utils/SerialExecutorImpl;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    return-void
.end method


# virtual methods
.method public final executeOnTaskThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/SerialExecutorImpl;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
