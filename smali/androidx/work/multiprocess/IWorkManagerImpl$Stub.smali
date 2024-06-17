.class public abstract Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImpl;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_0
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Lokio/SegmentPool;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p4, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance v3, Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    invoke-direct {v3, v0, v2, p3}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    iget-object v7, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p1, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iget-object v6, p1, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    new-instance p0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    new-instance p1, Lcom/google/mlkit/common/sdkinternal/zzn;

    const/4 v8, 0x2

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/mlkit/common/sdkinternal/zzn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, p1}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    new-instance p1, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    const/16 p3, 0x9

    invoke-direct {p1, p4, p2, p0, p3}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p1}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    :try_start_1
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Lokio/SegmentPool;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p4, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    new-instance v3, Landroidx/work/impl/utils/WorkProgressUpdater;

    invoke-direct {v3, p0, p3}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    iget-object p0, p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->mId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object p0, p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->mParcelableData:Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object v5, p0, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    new-instance p0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    new-instance p1, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/utils/WorkProgressUpdater$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, p1}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    new-instance p1, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    const/16 p3, 0x8

    invoke-direct {p1, p4, p2, p0, p3}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p1}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    :try_start_2
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Lokio/SegmentPool;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p3, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Landroidx/work/WorkQuery;

    new-instance p4, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {p4, p0, p1}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkQuery;)V

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {p0, p4}, Landroidx/work/impl/utils/SerialExecutorImpl;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p4, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/utils/futures/SettableFuture;

    new-instance p1, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    const/4 p4, 0x7

    invoke-direct {p1, p3, p2, p0, p4}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p1}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p1

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/work/impl/utils/CancelWorkRunnable$4;

    invoke-direct {p2, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$4;-><init>(Landroidx/work/impl/WorkManagerImpl;)V

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {p3, p2}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    iget-object p2, p2, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance p3, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    iget-object p2, p2, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 p4, 0x6

    invoke-direct {p3, p0, p1, p2, p4}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p3}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception p0

    invoke-static {p1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroidx/work/impl/utils/CancelWorkRunnable$1;

    invoke-direct {p3, p0, p1, v1}, Landroidx/work/impl/utils/CancelWorkRunnable$1;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/Object;I)V

    iget-object p1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {p1, p3}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    iget-object p1, p3, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance p3, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 p4, 0x4

    invoke-direct {p3, p0, p2, p1, p4}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p3}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_0

    :catchall_4
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_5
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroidx/work/impl/utils/CancelWorkRunnable$1;

    invoke-direct {p3, p0, p1, v0}, Landroidx/work/impl/utils/CancelWorkRunnable$1;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/Object;I)V

    iget-object p1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {p1, p3}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    iget-object p1, p3, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance p3, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p2, p1, p4}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p3}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    invoke-virtual {p0, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->enqueueContinuation(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_6
    sget-object p4, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p3, p4}, Lokio/SegmentPool;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    iget-object p3, p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    invoke-static {p0, p1, p3}, Lcom/adobe/xmp/XMPUtils;->enqueueUniquelyNamedPeriodic(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkRequest;)Landroidx/work/impl/OperationImpl;

    move-result-object p1

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance p3, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p3, p0, p2, p1, v1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p3}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_0

    :catchall_6
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteCallback;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_7
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Lokio/SegmentPool;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->enqueue(Ljava/util/List;)Landroidx/work/Operation;

    move-result-object p1

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance p3, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    check-cast p1, Landroidx/work/impl/OperationImpl;

    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p3, p0, p2, p1, v0}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;Landroidx/work/impl/utils/futures/SettableFuture;I)V

    invoke-virtual {p3}, Landroidx/collection/MapCollections;->dispatchCallbackSafely()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_0

    :catchall_7
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
