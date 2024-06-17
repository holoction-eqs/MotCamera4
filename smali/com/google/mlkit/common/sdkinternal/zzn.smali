.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Ljava/lang/Object;

.field public final zzd:Ljava/lang/Object;

.field public final synthetic zze:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/collection/MapCollections;Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/zza;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;Lcom/motorola/camera/capturedmediadata/RecordingTime;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p6, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->$r8$classId:I

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    iget v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    :try_start_0
    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/work/impl/utils/futures/AbstractFuture$Cancellation;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundUpdater;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v2, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v4, v4, Landroidx/work/impl/utils/WorkForegroundUpdater;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iget-object v5, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    check-cast v5, Landroidx/work/ForegroundInfo;

    check-cast v4, Landroidx/work/impl/Processor;

    invoke-virtual {v4, v0, v5}, Landroidx/work/impl/Processor;->startForeground(Ljava/lang/String;Landroidx/work/ForegroundInfo;)V

    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v2}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v2

    iget-object v4, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    check-cast v4, Landroidx/work/ForegroundInfo;

    invoke-static {v0, v2, v4}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->createNotifyIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, v3}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v2, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/model/MutablePair;

    invoke-static {v0, v2}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnStart(Landroid/view/View;Lcom/airbnb/lottie/model/MutablePair;)V

    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_2
    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections;

    iget-object v4, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/tasks/zza;

    iget-object v5, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/tasks/zza;

    iget-object v6, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Callable;

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zza;->isCancellationRequested()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_5

    :cond_2
    :try_start_1
    iget-object v7, v0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->load()V

    iget-object v0, v0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zza;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget v6, v0, Lcom/google/android/gms/tasks/zza;->$r8$classId:I

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto/16 :goto_7

    :goto_2
    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    iget-object v6, v0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v7, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v7, :cond_4

    monitor-exit v6

    goto/16 :goto_7

    :cond_4
    iput-boolean v2, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object v3, v0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, v0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_5
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zza;->isCancellationRequested()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v0, v5, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget v6, v0, Lcom/google/android/gms/tasks/zza;->$r8$classId:I

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    packed-switch v6, :pswitch_data_2

    goto :goto_3

    :pswitch_4
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_7

    :goto_3
    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    iget-object v6, v0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-boolean v7, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v7, :cond_6

    monitor-exit v6

    goto :goto_7

    :cond_6
    iput-boolean v2, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object v3, v0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v6, v0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_7

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_7
    iget-object v6, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    goto :goto_7

    :catch_1
    move-exception v0

    new-instance v6, Lcom/google/mlkit/common/MlKitException;

    const-string v7, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v6, v7, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/zza;->isCancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    iget-object v0, v5, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget v1, v0, Lcom/google/android/gms/tasks/zza;->$r8$classId:I

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_3

    goto :goto_6

    :pswitch_5
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_7

    :goto_6
    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    iget-object v4, v0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    iget-boolean v1, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v1, :cond_8

    monitor-exit v4

    goto :goto_7

    :cond_8
    iput-boolean v2, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object v3, v0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    iget-object v1, v0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :cond_9
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    :goto_7
    return-void

    :goto_8
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iget-wide v6, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    sub-long/2addr v4, v6

    iget-wide v6, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v8, v4, v6

    invoke-static {v3, v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzb:Ljava/lang/Object;

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_a

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v11

    iget-object v12, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzc:Ljava/lang/Object;

    const-string v13, "lengthTextView.context"

    if-eqz v11, :cond_c

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Float;

    const/16 v14, 0x1e

    int-to-float v14, v14

    const-string v15, "timelapse"

    invoke-static {v11, v15}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    div-float/2addr v14, v11

    float-to-int v11, v14

    int-to-long v14, v11

    div-long v14, v4, v14

    move-wide/from16 v16, v4

    div-long v4, v14, v6

    invoke-static {v3, v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14, v15}, Lkotlin/UByte$Companion;->access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v4, v12

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/zzn;->zzd:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "elapsedTimeTextView.context"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/UByte$Companion;->access$getTimelapseSpeed()Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x3c

    int-to-long v13, v11

    rem-long v6, v8, v13

    long-to-int v6, v6

    div-long v18, v8, v13

    move-object v11, v4

    rem-long v3, v18, v13

    long-to-int v3, v3

    const/16 v4, 0xe10

    move v15, v2

    int-to-long v1, v4

    div-long/2addr v8, v1

    rem-long/2addr v8, v13

    long-to-int v1, v8

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x7f100004

    invoke-virtual {v2, v8, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.resources.getQua\u2026merMinutes, timerMinutes)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x7f100005

    invoke-virtual {v3, v8, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.resources.getQua\u2026merSeconds, timerSeconds)"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v1, :cond_b

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f100003

    invoke-virtual {v4, v8, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "context.resources.getQua\u2026, timerHours, timerHours)"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f120528

    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{\n                val ho\u2026ond, speed)\n            }"

    goto :goto_a

    :cond_b
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120527

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{\n                contex\u2026ond, speed)\n            }"

    :goto_a
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-wide/from16 v4, v16

    goto :goto_c

    :cond_c
    move v15, v2

    move-wide/from16 v16, v4

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4, v5}, Lkotlin/UByte$Companion;->access$getTimerDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->videoTimerCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/cli/VideoTimerCallback;

    check-cast v2, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    iget-object v2, v2, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingTimer:Landroid/widget/TextView;

    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_e
    :goto_c
    sget-boolean v0, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    const-wide/16 v1, 0xa

    if-eqz v0, :cond_f

    const-wide/16 v8, 0xbb8

    rem-long/2addr v4, v8

    sub-long/2addr v8, v4

    add-long/2addr v8, v1

    move-object/from16 v3, p0

    invoke-virtual {v10, v3, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    :cond_f
    const-wide/16 v8, 0x3e8

    move-object/from16 v3, p0

    rem-long/2addr v4, v8

    sub-long v4, v8, v4

    add-long/2addr v4, v1

    invoke-virtual {v10, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_d
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    if-nez v15, :cond_10

    iget-object v0, v3, Lcom/google/mlkit/common/sdkinternal/zzn;->zze:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->refreshUIAnimation()V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method
