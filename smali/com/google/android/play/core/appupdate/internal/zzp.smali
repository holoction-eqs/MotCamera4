.class public final synthetic Lcom/google/android/play/core/appupdate/internal/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/play/core/appupdate/internal/zzp;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzp;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    iget v0, p0, Lcom/google/android/play/core/appupdate/internal/zzp;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzp;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v1, "reportBinderDeath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s : Binder has died."

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzn;

    new-instance v2, Landroid/os/RemoteException;

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " : Binder has died."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzn;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzw()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_1
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzp;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteCallback;

    const-string v0, "Binder died"

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteCallback;->onFailure(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
