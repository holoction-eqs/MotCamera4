.class public final Lcom/google/android/gms/common/internal/zzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/common/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "Timeout waiting for ServiceConnection callback "

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/zzo;

    if-eqz p0, :cond_3

    iget v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v5, "GmsClientSupervisor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "unknown"

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzo;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_3
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzo;

    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, v1, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/base/zau;

    iget-object v5, v1, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object v5, v4, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    invoke-virtual {v5, v4, v1}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-boolean v2, v1, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_6
    :goto_0
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
