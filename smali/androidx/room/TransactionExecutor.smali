.class public final Landroidx/room/TransactionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic $r8$classId:I

.field public active:Ljava/lang/Object;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final syncLock:Ljava/lang/Object;

.field public final tasks:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzt;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/room/TransactionExecutor;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/room/TransactionExecutor;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget v0, p0, Landroidx/room/TransactionExecutor;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/lang/Object;

    check-cast v2, Ljava/util/Queue;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v3, 0xe

    invoke-direct {v2, v3, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_0
    iget-object v0, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/tasks/zza;

    iget-object v3, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/tasks/zza;

    iget-object p0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zza;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, v3, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zza;

    iget v0, p0, Lcom/google/android/gms/tasks/zza;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_2

    :goto_1
    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v2, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v2, :cond_2

    monitor-exit v0

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    :goto_2
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method

.method public final scheduleNext()V
    .locals 3

    iget v0, p0, Landroidx/room/TransactionExecutor;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_0
    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/lang/Object;

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
