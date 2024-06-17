.class public final Lcom/google/android/gms/tasks/TaskCompletionSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/tasks/zzw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    new-instance v0, Lcom/google/android/gms/tasks/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zza;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    iget-object p0, p1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    new-instance p1, Lcom/google/android/gms/tasks/zza;

    invoke-direct {p1, v0}, Lcom/google/android/gms/tasks/zza;-><init>(Lcom/google/android/gms/tasks/zza;)V

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method


# virtual methods
.method public final trySetException(Ljava/lang/Exception;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Exception must not be null"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    move p0, v0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
