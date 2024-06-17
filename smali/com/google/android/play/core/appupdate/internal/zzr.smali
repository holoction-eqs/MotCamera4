.class public final Lcom/google/android/play/core/appupdate/internal/zzr;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    iget v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v3, v3, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v3, v3, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v1, "Leaving the connection open for other ongoing calls."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v4, v3, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v4, "Unbind from service."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v4, v3, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb:Landroid/content/Context;

    iget-object v3, v3, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/play/core/appupdate/internal/zzx;

    iput-boolean v2, v4, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    move-object v2, v3

    check-cast v2, Lcom/google/android/play/core/appupdate/internal/zzx;

    iput-object v1, v2, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    check-cast v3, Lcom/google/android/play/core/appupdate/internal/zzx;

    iput-object v1, v3, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    :cond_2
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzw()V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_2
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "unlinkToDeath"

    invoke-virtual {v3, v5, v4}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk:Lcom/google/android/play/core/appupdate/internal/zzp;

    invoke-interface {v3, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    iput-boolean v2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
