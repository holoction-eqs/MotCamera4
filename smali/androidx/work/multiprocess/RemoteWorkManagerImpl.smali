.class public final Landroidx/work/multiprocess/RemoteWorkManagerImpl;
.super Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.source "SourceFile"


# static fields
.field public static final sEMPTY:[B


# instance fields
.field public final mWorkManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;-><init>()V

    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    return-void
.end method


# virtual methods
.method public final cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 2

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    iget-object p1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    iget-object p1, v0, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final enqueueContinuation(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    .locals 7

    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lokio/SegmentPool;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p2, p2, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/work/impl/WorkContinuationImpl;

    iget-object v2, p2, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mName:Ljava/lang/String;

    iget v3, p2, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mWorkPolicy:I

    iget-object v4, p2, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mRequests:Ljava/util/List;

    iget-object p2, p2, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mParents:Ljava/util/List;

    invoke-static {v1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->parents(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/Operation;

    move-result-object p2

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    check-cast p2, Landroidx/work/impl/OperationImpl;

    iget-object p2, p2, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
