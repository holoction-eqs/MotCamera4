.class public final Landroidx/work/impl/utils/WorkProgressUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;

.field public final val$data:Ljava/lang/Object;

.field public final val$future:Ljava/lang/Object;

.field public final val$id:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p5, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->$r8$classId:I

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v2, Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v4, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/manager/FontAssetManager;

    iput-object v4, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    iget-object v4, v5, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpz;

    if-eqz v4, :cond_2

    sget v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzap;->$r8$clinit:I

    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpz;->zzd:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v7, v6

    :cond_1
    :goto_0
    if-nez v7, :cond_2

    invoke-static {v4}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v4, "NA"

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-direct {v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;-><init>()V

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzc:Ljava/lang/String;

    iput-object v7, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzd:Ljava/lang/String;

    iput-object v7, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Ljava/lang/Object;

    const-class v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-static {v8}, Landroidx/core/os/ConfigurationCompat$Api24Impl;->getLocales(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v8

    new-instance v9, Landroidx/core/os/LocaleListCompat;

    new-instance v10, Landroidx/core/os/LocaleListPlatformWrapper;

    invoke-direct {v10, v8}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Ljava/lang/Object;)V

    invoke-direct {v9, v10}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListPlatformWrapper;)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;-><init>()V

    :goto_2
    invoke-virtual {v9}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v10

    if-ge v6, v10, :cond_4

    invoke-virtual {v9, v6}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v10

    sget-object v11, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->zza:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v7

    iput-object v8, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zze:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzh:Ljava/lang/Object;

    iput-object v4, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzd:Ljava/lang/Object;

    iput-object v1, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzc:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    iput-object v3, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzj:Ljava/lang/Object;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzk:Ljava/lang/Object;

    iput-object v5, v2, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zza(Lcom/adobe/xmp/impl/ByteBuffer;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :pswitch_1
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iget-object v3, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/datatransport/TransportScheduleCallback;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    sget-object v4, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->LOGGER:Ljava/util/logging/Logger;

    :try_start_1
    iget-object v5, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->backendRegistry:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    iget-object v8, v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v0, "Transport backend \'%s\' is not registered"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    check-cast v5, Lcom/google/android/datatransport/cct/CctTransportBackend;

    invoke-virtual {v5, v1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->decorate(Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;)Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    move-result-object v1

    iget-object v5, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v6, Landroidx/core/view/MenuHostHelper;

    const/16 v7, 0x1a

    invoke-direct {v6, v0, v2, v1, v7}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error scheduling event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    return-void

    :pswitch_2
    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    iget-object v3, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    :try_start_2
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/work/multiprocess/IWorkManagerImpl;

    move-object v5, v3

    check-cast v5, Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v7, v5, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Lcom/google/android/play/core/appupdate/internal/zzp;

    iput-object v0, v5, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-interface {v0, v7, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    iget-object v0, v5, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, v8}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    iget-object v0, v5, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_7

    :try_start_5
    invoke-interface {v0, v7, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_2
    :cond_7
    :try_start_6
    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    :goto_7
    move-object v0, v2

    check-cast v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v0, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    new-instance v5, Landroidx/work/Worker$2;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v1, v4}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroidx/work/impl/utils/SerialExecutorImpl;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const-string v4, "Unable to bind to service"

    invoke-virtual {v0, v1, v4}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Landroidx/work/multiprocess/RemoteCallback;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    check-cast v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {v2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->cleanUp()V

    :goto_8
    return-void

    :pswitch_3
    iget-object v3, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    :try_start_7
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/work/multiprocess/IListenableWorkerImpl;

    move-object v5, v3

    check-cast v5, Landroidx/work/multiprocess/RemoteCallback;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v7, v5, Landroidx/work/multiprocess/RemoteCallback;->mRecipient:Lcom/google/android/play/core/appupdate/internal/zzp;

    iput-object v0, v5, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    invoke-interface {v0, v7, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v8, v0

    :try_start_9
    iget-object v0, v5, Landroidx/work/multiprocess/RemoteCallback;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, v8}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    iget-object v0, v5, Landroidx/work/multiprocess/RemoteCallback;->mBinder:Landroid/os/IBinder;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6

    if-eqz v0, :cond_8

    :try_start_a
    invoke-interface {v0, v7, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    :catch_5
    :cond_8
    :try_start_b
    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteCallback;->onRequestCompleted()V

    :goto_9
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/multiprocess/ListenableWorkerImplClient;

    iget-object v0, v0, Landroidx/work/multiprocess/ListenableWorkerImplClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroidx/work/Worker$2;

    invoke-direct {v5, v2, v1, v4}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/ListenableWorkerImplClient;->TAG:Ljava/lang/String;

    const-string v4, "Unable to bind to service"

    invoke-virtual {v1, v2, v4, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Landroidx/work/multiprocess/RemoteCallback;

    invoke-static {v3, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_a
    return-void

    :pswitch_4
    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    const-string v3, "Updating proxies: (BatteryNotLowProxy ("

    :try_start_c
    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    const-string v5, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object v5, v1

    check-cast v5, Landroid/content/Intent;

    const-string v7, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object v7, v1

    check-cast v7, Landroid/content/Intent;

    const-string v8, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    check-cast v1, Landroid/content/Intent;

    const-string v8, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), BatteryChargingProxy ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), StorageNotLowProxy ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), NetworkStateProxy ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    sget-object v8, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v8, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const-class v6, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    invoke-static {v3, v6, v4}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const-class v4, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    invoke-static {v3, v4, v5}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const-class v4, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    invoke-static {v3, v4, v7}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    check-cast v0, Landroid/content/Context;

    const-class v3, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    invoke-static {v0, v3, v1}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    check-cast v2, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_1
    move-exception v0

    check-cast v2, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0

    :pswitch_5
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    if-eqz v0, :cond_9

    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/base/Joiner;

    iget-object v3, v2, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iput-boolean v7, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    iget-object v0, v2, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iput-boolean v6, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    :cond_9
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v0, v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    :cond_a
    return-void

    :pswitch_7
    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    const-string v0, "Ignoring setProgressAsync(...). WorkSpec ("

    iget-object v3, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v3, Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Updating progress for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroidx/work/Data;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v8, v6, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_d
    move-object v8, v1

    check-cast v8, Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v8, v8, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, v8, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v9, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v8, v9, :cond_b

    new-instance v0, Landroidx/work/impl/model/WorkProgress;

    check-cast v3, Landroidx/work/Data;

    invoke-direct {v0, v5, v3}, Landroidx/work/impl/model/WorkProgress;-><init>(Ljava/lang/String;Landroidx/work/Data;)V

    move-object v3, v1

    check-cast v3, Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v3, v3, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/WorkQuery;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/work/WorkQuery;->insert(Landroidx/work/impl/model/WorkProgress;)V

    goto :goto_b

    :cond_b
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is not in a RUNNING state."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move-object v0, v2

    check-cast v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, v4}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    check-cast v1, Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    goto :goto_c

    :cond_c
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_e
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/utils/WorkProgressUpdater;->TAG:Ljava/lang/String;

    const-string v4, "Error updating Worker progress"

    invoke-virtual {v1, v3, v4, v0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v2, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_c
    iget-object v0, v6, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void

    :catchall_3
    move-exception v0

    iget-object v1, v6, Landroidx/work/impl/utils/WorkProgressUpdater;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :goto_d
    iget-object v0, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$id:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    iget-object v2, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$data:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/CameraKpi;

    iget-object v4, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->val$future:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    iget-object v1, v1, Landroidx/work/impl/utils/WorkProgressUpdater$1;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    iput-object v4, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zzb:Ljava/lang/Object;

    iget-object v4, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zza:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    if-eqz v4, :cond_f

    sget v8, Lcom/google/android/gms/internal/mlkit_vision_common/zze;->$r8$clinit:I

    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;->zzd:Ljava/lang/String;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_e

    :cond_d
    move v8, v6

    goto :goto_f

    :cond_e
    :goto_e
    move v8, v7

    :goto_f
    if-nez v8, :cond_f

    invoke-static {v4}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_10

    :cond_f
    const-string v4, "NA"

    :goto_10
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzc:Ljava/lang/String;

    iput-object v9, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzd:Ljava/lang/String;

    iput-object v9, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Ljava/lang/Object;

    const-class v9, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    monitor-enter v9

    :try_start_f
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    const v11, 0x7fffffff

    if-eqz v10, :cond_10

    goto :goto_13

    :cond_10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-static {v10}, Landroidx/core/os/ConfigurationCompat$Api24Impl;->getLocales(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v10

    new-instance v12, Landroidx/core/os/LocaleListCompat;

    new-instance v13, Landroidx/core/os/LocaleListPlatformWrapper;

    invoke-direct {v13, v10}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Ljava/lang/Object;)V

    invoke-direct {v12, v13}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListPlatformWrapper;)V

    new-array v5, v5, [Ljava/lang/Object;

    move v10, v6

    :goto_11
    invoke-virtual {v12}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v13

    if-ge v6, v13, :cond_14

    invoke-virtual {v12, v6}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v13

    sget-object v14, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->zza:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v14, v10, 0x1

    array-length v15, v5

    if-ge v15, v14, :cond_13

    shr-int/lit8 v16, v15, 0x1

    add-int v15, v15, v16

    add-int/2addr v15, v7

    if-ge v15, v14, :cond_11

    add-int/lit8 v15, v14, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v15

    add-int/2addr v15, v15

    :cond_11
    if-gez v15, :cond_12

    move v15, v11

    :cond_12
    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    :cond_13
    aput-object v13, v5, v10

    add-int/lit8 v6, v6, 0x1

    move v10, v14

    goto :goto_11

    :cond_14
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzn;

    if-nez v10, :cond_15

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    move-object v10, v5

    goto :goto_12

    :cond_15
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    invoke-direct {v6, v10, v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;-><init>(I[Ljava/lang/Object;)V

    move-object v10, v6

    :goto_12
    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzu;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_13
    monitor-exit v9

    iput-object v10, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zze:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzh:Ljava/lang/Object;

    iput-object v4, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzd:Ljava/lang/Object;

    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzc:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzh:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_14

    :cond_16
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object v1

    :goto_14
    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzf:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzj:Ljava/lang/Object;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzk:Ljava/lang/Object;

    iput-object v8, v2, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;->zza(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v9

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
