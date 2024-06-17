.class public Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DetectionResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# static fields
.field public static final zzb:Lcom/motorola/camera/CameraKpi;


# instance fields
.field public final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final zzd:Landroidx/room/EntityInsertionAdapter;

.field public final zze:Lcom/google/android/gms/tasks/zza;

.field public final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    const-string v1, "MobileVisionBase"

    invoke-direct {v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/motorola/camera/CameraKpi;

    return-void
.end method

.method public constructor <init>(Landroidx/room/EntityInsertionAdapter;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/google/android/gms/tasks/zza;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zza;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Lcom/google/android/gms/tasks/zza;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    iget-object p0, p1, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object p0, Lcom/google/mlkit/vision/common/internal/zzb;->zza:Lcom/google/mlkit/vision/common/internal/zzb;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    invoke-virtual {p1, p2, p0, v0}, Landroidx/collection/MapCollections;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0

    sget-object p1, Lcom/google/mlkit/common/internal/zzd;->zza$2:Lcom/google/mlkit/common/internal/zzd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zza;

    iget v2, v0, Lcom/google/android/gms/tasks/zza;->$r8$classId:I

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_1

    :goto_0
    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    iget-object v2, v0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v3, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    goto :goto_1

    :cond_0
    iput-boolean v1, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    :goto_1
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Landroidx/room/EntityInsertionAdapter;

    iget-object v2, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkState(Z)V

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v3, v0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/JsonConfig$CameraMapping;

    new-instance v4, Landroidx/work/Worker$2;

    const/16 v5, 0x16

    invoke-direct {v4, v0, v1, v5}, Landroidx/work/Worker$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/JsonConfig$CameraMapping;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
