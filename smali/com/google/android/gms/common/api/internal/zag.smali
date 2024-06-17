.class public final Lcom/google/android/gms/common/api/internal/zag;
.super Lcom/google/android/gms/common/api/internal/zac;
.source "SourceFile"


# instance fields
.field public final zaa:Lcom/google/android/gms/common/internal/zzu;

.field public final zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final zad:Lkotlin/UByte$Companion;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/internal/zzu;Lcom/google/android/gms/tasks/TaskCompletionSource;Lkotlin/UByte$Companion;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zac;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/internal/zzu;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zag;->zad:Lkotlin/UByte$Companion;

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    iget-boolean p0, p2, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/api/internal/zabq;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/internal/zzu;

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    return p0
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zabq;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/internal/zzu;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast p0, [Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final zad(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->zad:Lkotlin/UByte$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final zae(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final zaf(Lcom/google/android/gms/common/api/internal/zabq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zag;->zaa:Lcom/google/android/gms/common/internal/zzu;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/common/internal/zzu;->doExecute(Lcom/google/android/gms/common/internal/GmsClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zac;->zah(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zag;->zad(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p0
.end method

.method public final zag(Lcom/google/android/gms/common/api/internal/zaad;Z)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    const/16 v1, 0xa

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    new-instance p1, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object p0, p2, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    return-void
.end method
