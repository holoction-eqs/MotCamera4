.class public final Lcom/google/android/play/core/appupdate/internal/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/util/HashMap;


# instance fields
.field public final zzb:Landroid/content/Context;

.field public final zzc:Lcom/motorola/camera/saving/XmpData$DocData;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/util/ArrayList;

.field public final zzf:Ljava/util/HashSet;

.field public final zzg:Ljava/lang/Object;

.field public zzh:Z

.field public final zzi:Landroid/content/Intent;

.field public final zzj:Ljava/lang/ref/WeakReference;

.field public final zzk:Lcom/google/android/play/core/appupdate/internal/zzp;

.field public final zzl:Ljava/util/concurrent/atomic/AtomicInteger;

.field public zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

.field public zzn:Landroid/os/IInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zza:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/saving/XmpData$DocData;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/appupdate/internal/zzp;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk:Lcom/google/android/play/core/appupdate/internal/zzp;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string p1, "AppUpdateService"

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzi:Landroid/content/Intent;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static zzp(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/play/core/appupdate/internal/zzn;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/motorola/camera/saving/XmpData$DocData;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "Initiate binding to the service."

    invoke-virtual {v3, v4, v0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/play/core/appupdate/internal/zzw;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/appupdate/internal/zzw;-><init>(Lcom/google/android/play/core/appupdate/internal/zzx;)V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    iget-object v4, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzi:Landroid/content/Intent;

    invoke-virtual {v4, v5, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Failed to bind to the service."

    invoke-virtual {v3, v0, p1}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/appupdate/internal/zzn;

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Lcom/google/gson/JsonParseException;-><init>()V

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/internal/zzn;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    if-eqz p0, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Waiting to bind to the service."

    invoke-virtual {v3, v0, p0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/internal/zzn;->run()V

    return-void
.end method


# virtual methods
.method public final zzc()Landroid/os/Handler;
    .locals 4

    sget-object v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zza:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzw()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v3, Landroid/os/RemoteException;

    iget-object v4, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " : Binder has died."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
