.class public final Lcom/google/android/play/core/appupdate/internal/zzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iBinder"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    if-nez v2, :cond_8

    iget-boolean v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    if-eqz v2, :cond_8

    sget v2, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub;->$r8$clinit:I

    const-string v2, "com.motorola.camera.background.coprocessor.common.ICoProcServiceIntf"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub$Proxy;

    invoke-direct {v2, p2}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->product:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->staticConfig:[B

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mlModels:Landroid/os/Bundle;

    invoke-interface {v2, p2, v3, v4}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->initialize(Ljava/lang/String;[BLandroid/os/Bundle;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_2
    instance-of v2, p2, Landroid/os/RemoteException;

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    instance-of v2, p2, Ljava/io/IOException;

    :goto_1
    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v3, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initialize() exception: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    const/4 p2, 0x0

    :try_start_3
    iget-object v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mClientIntf:Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase$mClientIntf$1;

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->clientIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v5, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v4, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v5, v4}, Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, p2

    :goto_3
    iput-object v2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceClientId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_4
    sget-object v3, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->TAG:Ljava/lang/String;

    iget-object v4, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v4, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " registerClient() exception: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iput-boolean v1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    iget-object v1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mCoproReady:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    iget-object p0, p1, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;->mCoproReady:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_5

    :cond_5
    const-string p0, "mCoproReady"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_6
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->parent:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget p0, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object p2, p1, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->mScheduler:Lcom/motorola/camera/background/service/jms/JobMgrScheduler;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v1, v2, p0}, Lcom/motorola/camera/background/service/jms/JobMgrScheduler;->scheduleUnfinishedJobRequest(JLjava/lang/Integer;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_7
    const-string p0, "mCoproReady"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_8
    iget-boolean p2, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBindingPending:Z

    if-nez p2, :cond_9

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->context:Landroid/content/Context;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_9
    :goto_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/MultiInstanceInvalidationClient;

    sget p1, Landroidx/room/MultiInstanceInvalidationService$binder$1;->$r8$clinit:I

    const-string p1, "androidx.room.IMultiInstanceInvalidationService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_a

    instance-of v0, p1, Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v0, :cond_a

    check-cast p1, Landroidx/room/IMultiInstanceInvalidationService;

    goto :goto_6

    :cond_a
    new-instance p1, Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;

    invoke-direct {p1, p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_6
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->setUpRunnable:Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v1, v2, p1}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/play/core/appupdate/internal/zzt;

    invoke-direct {p1, p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzt;-><init>(Lcom/google/android/play/core/appupdate/internal/zzw;Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_7
    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Messenger;

    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "looper"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;Landroid/os/Looper;)V

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->messenger:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->handlerThread:Landroid/os/HandlerThread;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mBgLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter p1

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mServiceBound:Z

    iput-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mService:Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;

    iput v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/postprocService/PostProcServiceConnection;->mStartRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/MultiInstanceInvalidationClient;

    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable:Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v1, v2, p1}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/play/core/appupdate/internal/zzr;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/google/android/play/core/appupdate/internal/zzr;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    sget-object p1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->handlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    iput-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    iput-boolean v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
