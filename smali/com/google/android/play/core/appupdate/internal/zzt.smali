.class public final Lcom/google/android/play/core/appupdate/internal/zzt;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Landroid/os/IBinder;

.field public final synthetic zzb:Lcom/google/android/play/core/appupdate/internal/zzw;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzw;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zzb:Lcom/google/android/play/core/appupdate/internal/zzw;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zza:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zzb:Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    sget v2, Lcom/google/android/play/core/appupdate/internal/zze;->$r8$clinit:I

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zza:Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/play/core/appupdate/internal/zzf;

    if-eqz v3, :cond_1

    move-object p0, v2

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzf;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/play/core/appupdate/internal/zzd;

    invoke-direct {v2, p0}, Lcom/google/android/play/core/appupdate/internal/zzd;-><init>(Landroid/os/IBinder;)V

    move-object p0, v2

    :goto_0
    iput-object p0, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    iget-object p0, v0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v1, v4, v3}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk:Lcom/google/android/play/core/appupdate/internal/zzp;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath failed"

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual {v0, v1, v4, v3}, Lcom/motorola/camera/saving/XmpData$DocData;->zzc(Landroid/os/RemoteException;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v0, p0

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iput-boolean v2, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_2
    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
