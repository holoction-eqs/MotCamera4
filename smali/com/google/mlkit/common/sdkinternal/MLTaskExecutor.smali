.class public final Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;


# instance fields
.field public final zzc:Landroidx/preference/PreferenceFragmentCompat$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzc:Landroidx/preference/PreferenceFragmentCompat$1;

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;
    .locals 4

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    invoke-direct {v2, v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    :cond_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Landroidx/work/Worker$2;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v0, v2}, Landroidx/work/Worker$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    invoke-virtual {p0, v1}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-object p0
.end method
