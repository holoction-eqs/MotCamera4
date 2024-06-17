.class public abstract Lcom/google/android/play/core/appupdate/zzo;
.super Lcom/google/android/play/core/appupdate/internal/zzg;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/motorola/camera/saving/XmpData$DocData;

.field public final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic zzc:Lcom/google/android/play/core/appupdate/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/motorola/camera/saving/XmpData$DocData;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzg;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/appupdate/internal/zzr;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-array p1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v0, "onCompleteUpdate"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public zzc(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/appupdate/internal/zzr;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-array p1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v0, "onRequestInfo"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
