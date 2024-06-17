.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDefaultProcessName:Ljava/lang/String;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mInputMergerFactory:Landroidx/work/InputMergerFactory$1;

.field public final mLoggingLevel:I

.field public final mMaxJobSchedulerId:I

.field public final mMaxSchedulerLimit:I

.field public final mRunnableScheduler:Lcom/google/gson/FieldAttributes;

.field public final mTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mWorkerFactory:Landroidx/work/WorkerFactory$1;


# direct methods
.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/work/Configuration;->createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/work/WorkerFactory$1;

    invoke-direct {v1}, Landroidx/work/WorkerFactory$1;-><init>()V

    iput-object v1, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/WorkerFactory$1;

    new-instance v1, Landroidx/work/InputMergerFactory$1;

    invoke-direct {v1, v0}, Landroidx/work/InputMergerFactory$1;-><init>(I)V

    iput-object v1, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/InputMergerFactory$1;

    new-instance v0, Lcom/google/gson/FieldAttributes;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/gson/FieldAttributes;-><init>(I)V

    iput-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Lcom/google/gson/FieldAttributes;

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    iget-object p1, p1, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    return-void
.end method

.method public static createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroidx/work/Configuration$1;

    invoke-direct {v1, p0}, Landroidx/work/Configuration$1;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
