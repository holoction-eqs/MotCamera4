.class public final Lcom/google/android/play/core/appupdate/zzg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/zzr;

.field public final zzb:Lcom/google/android/play/core/appupdate/zzc;

.field public final zzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/play/core/appupdate/zzc;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzg;->zza:Lcom/google/android/play/core/appupdate/zzr;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzg;->zzb:Lcom/google/android/play/core/appupdate/zzc;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzg;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;
    .locals 9

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzg;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzg;->zza:Lcom/google/android/play/core/appupdate/zzr;

    iget-object v7, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    if-nez v7, :cond_1

    const/16 p0, -0x9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "PlayCore"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/saving/XmpData$DocData;->mData:Ljava/lang/String;

    const-string v3, "onError(%d)"

    invoke-static {v1, v3, v0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    new-instance p0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "requestUpdateInfo(%s)"

    sget-object v3, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual {v3, v2, v1}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v8}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v5, Lcom/google/android/play/core/appupdate/zzm;

    invoke-direct {v5, p0, v8, v0, v8}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance p0, Lcom/google/android/play/core/appupdate/zzm;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;I)V

    invoke-virtual {v7}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v8, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    :goto_0
    return-object p0
.end method
