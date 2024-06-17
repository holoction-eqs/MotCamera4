.class public final Lcom/google/android/play/core/appupdate/zzm;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 7

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lcom/google/android/play/core/appupdate/zzr;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    move-object v3, v1

    check-cast v3, Lcom/google/android/play/core/appupdate/zzr;

    iget-object v3, v3, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzi()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/google/android/play/core/appupdate/zzp;

    check-cast v1, Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {v5, v1, v0}, Lcom/google/android/play/core/appupdate/zzp;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/play/core/appupdate/internal/zzf;->zzc(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "completeUpdate(%s)"

    invoke-virtual {v2, v1, v3, p0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzc(Landroid/os/RemoteException;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    :try_start_1
    move-object v2, v1

    check-cast v2, Lcom/google/android/play/core/appupdate/zzr;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    move-object v3, v1

    check-cast v3, Lcom/google/android/play/core/appupdate/zzr;

    iget-object v4, v3, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/play/core/appupdate/zzr;->zzb(Lcom/google/android/play/core/appupdate/zzr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v5, Lcom/google/android/play/core/appupdate/zzq;

    check-cast v1, Lcom/google/android/play/core/appupdate/zzr;

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v1, v0, v6}, Lcom/google/android/play/core/appupdate/zzq;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    invoke-interface {v2, v4, v3, v5}, Lcom/google/android/play/core/appupdate/internal/zzf;->zzd(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/zzq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    check-cast p0, Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "requestUpdateInfo(%s)"

    invoke-virtual {v2, v1, v3, p0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzc(Landroid/os/RemoteException;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    new-instance v4, Lcom/motorola/camera/CameraKpi;

    const/16 v5, 0xe

    invoke-direct {v4, v5, v1, v2}, Lcom/motorola/camera/CameraKpi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    new-instance v2, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v2, v1, v4}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object v1, v3, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v3}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzn;

    invoke-static {v1, p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzp(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/play/core/appupdate/internal/zzn;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
