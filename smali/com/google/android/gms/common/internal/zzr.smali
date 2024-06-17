.class public final Lcom/google/android/gms/common/internal/zzr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static zza:Landroid/os/HandlerThread;

.field public static final zzc$com$google$android$gms$common$internal$GmsClientSupervisor:Ljava/lang/Object;

.field public static zzd$com$google$android$gms$common$internal$GmsClientSupervisor:Lcom/google/android/gms/common/internal/zzr;


# instance fields
.field public final zzb:Ljava/util/HashMap;

.field public final zzc:Landroid/content/Context;

.field public volatile zzd:Lcom/google/android/gms/internal/base/zau;

.field public final zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field public final zzg:J

.field public final zzh:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzr;->zzc$com$google$android$gms$common$internal$GmsClientSupervisor:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzq;-><init>(Lcom/google/android/gms/common/internal/zzr;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/base/zau;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/base/zau;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/base/zau;

    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/common/stats/ConnectionTracker;

    invoke-direct {p2}, Lcom/google/android/gms/common/stats/ConnectionTracker;-><init>()V

    sput-object p2, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:J

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/common/internal/zze;Z)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    invoke-direct {v0, p1, p3, p5, p2}, Lcom/google/android/gms/common/internal/zzn;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    const-string p1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    const-string p2, "Nonexistent connection status for service config: "

    iget-object p3, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter p3

    :try_start_0
    iget-object p5, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/common/internal/zzo;

    if-eqz p5, :cond_2

    iget-object p2, p5, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p5, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p5, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/base/zau;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/base/zau;

    iget-wide p4, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:J

    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit p3

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzn;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzn;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzc(Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/internal/zze;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/zzo;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/common/internal/zzo;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/internal/zzo;-><init>(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/zzn;)V

    iget-object v0, v2, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/common/internal/zzo;->zze(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/base/zau;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, v2, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, v2, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p3}, Lcom/google/android/gms/common/internal/zzo;->zze(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, v2, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    iget-object p1, v2, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/common/internal/zze;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    iget-boolean p0, v2, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    monitor-exit v1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzn;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
