.class public abstract Lcom/google/android/gms/common/internal/GmsClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$Client;


# static fields
.field public static final zze:[Lcom/google/android/gms/common/Feature;


# instance fields
.field public final zac:Ljava/util/Set;

.field public final zad:Landroid/accounts/Account;

.field public volatile zzA:Ljava/lang/String;

.field public zzB:Lcom/google/android/gms/common/ConnectionResult;

.field public zzC:Z

.field public volatile zzD:Lcom/google/android/gms/common/internal/zzj;

.field public zza:Lcom/google/android/gms/common/internal/zzu;

.field public final zzb:Lcom/google/android/gms/common/internal/zzb;

.field public zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

.field public final zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile zzk:Ljava/lang/String;

.field public final zzl:Landroid/content/Context;

.field public final zzn:Lcom/google/android/gms/common/internal/zzr;

.field public final zzp:Ljava/lang/Object;

.field public final zzq:Ljava/lang/Object;

.field public zzr:Lcom/google/android/gms/common/internal/zzac;

.field public zzs:Landroid/os/IInterface;

.field public final zzt:Ljava/util/ArrayList;

.field public zzu:Lcom/google/android/gms/common/internal/zze;

.field public zzv:I

.field public final zzw:Landroidx/recyclerview/widget/OpReorderer;

.field public final zzx:Landroidx/recyclerview/widget/OpReorderer;

.field public final zzy:I

.field public final zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v0, Lcom/google/android/gms/common/internal/GmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/internal/zzr;->zzc$com$google$android$gms$common$internal$GmsClientSupervisor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/zzr;->zzd$com$google$android$gms$common$internal$GmsClientSupervisor:Lcom/google/android/gms/common/internal/zzr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/internal/zzr;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/common/internal/zzr;->zzd$com$google$android$gms$common$internal$GmsClientSupervisor:Lcom/google/android/gms/common/internal/zzr;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/internal/zzr;->zzd$com$google$android$gms$common$internal$GmsClientSupervisor:Lcom/google/android/gms/common/internal/zzr;

    sget-object v1, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    invoke-static {p5}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p6}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v1, p5}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    new-instance p5, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {p5, p6}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    iget-object p6, p4, Lcom/google/android/gms/common/internal/ClientSettings;->zah:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzk:Ljava/lang/String;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzp:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzq:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzt:Ljava/util/ArrayList;

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzv:I

    iput-object v2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzC:Z

    iput-object v2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v2, "Context must not be null"

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzl:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    if-eqz p2, :cond_3

    const-string p1, "Supervisor must not be null"

    invoke-static {v0, p1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzn:Lcom/google/android/gms/common/internal/zzr;

    new-instance p1, Lcom/google/android/gms/common/internal/zzb;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/zzb;-><init>(Lcom/google/android/gms/common/internal/GmsClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzb:Lcom/google/android/gms/common/internal/zzb;

    iput p3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzy:I

    iput-object v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzw:Landroidx/recyclerview/widget/OpReorderer;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzx:Landroidx/recyclerview/widget/OpReorderer;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzz:Ljava/lang/String;

    iget-object p1, p4, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zad:Landroid/accounts/Account;

    iget-object p1, p4, Lcom/google/android/gms/common/internal/ClientSettings;->zac:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/common/internal/GmsClient;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzv:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/internal/GmsClient;->zzp(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final disconnect()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzt:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzt:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/zza;

    .line 2
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iput-object v3, v4, Lcom/google/android/gms/common/internal/zza;->zza$com$google$android$gms$common$internal$zzc:Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzr:Lcom/google/android/gms/common/internal/zzac;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/common/internal/GmsClient;->zzp(ILandroid/os/IInterface;)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public final disconnect(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void
.end method

.method public bridge synthetic getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0

    sget-object p0, Lcom/google/android/gms/common/internal/GmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/GmsClient;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v2

    new-instance v15, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v5, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzy:I

    iget-object v14, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzA:Ljava/lang/String;

    sget v6, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sget-object v9, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v13, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v15

    move-object v12, v13

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzl:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    iput-object v3, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/GmsClient;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/common/internal/GmsClient;->zad:Landroid/accounts/Account;

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/IBinder;

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/internal/GmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzk:[Lcom/google/android/gms/common/Feature;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/GmsClient;->getApiFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzl:[Lcom/google/android/gms/common/Feature;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/GmsClient;->usesClientTelemetry()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iput-boolean v2, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzo:Z

    :cond_3
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzr:Lcom/google/android/gms/common/internal/zzac;

    if-eqz v0, :cond_4

    new-instance v5, Lcom/google/android/gms/common/internal/zzd;

    iget-object v6, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/google/android/gms/common/internal/zzd;-><init>(Lcom/google/android/gms/common/internal/GmsClient;I)V

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/common/internal/zzac;->getService(Lcom/google/android/gms/common/internal/zzd;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_0

    :cond_4
    const-string v0, "GmsClient"

    const-string v4, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v3, "GmsClient"

    const-string v4, "IGmsServiceBroker.getService failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v3, Lcom/google/android/gms/common/internal/zzf;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5, v5}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/GmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object v1, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzb:Lcom/google/android/gms/common/internal/zzb;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzb:Lcom/google/android/gms/common/internal/zzb;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method public final getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zac:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getService()Landroid/os/IInterface;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzv:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzs:Landroid/os/IInterface;

    const-string v1, "Client is connected but service is null"

    invoke-static {p0, v1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public abstract getStartServiceAction()Ljava/lang/String;
.end method

.method public getUseDynamicLookup()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getMinApkVersion()I

    move-result p0

    const v0, 0xc9e4920

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzv:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isConnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzv:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic requiresSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic usesClientTelemetry()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzp(ILandroid/os/IInterface;)V
    .locals 9

    const-string v0, "unable to connect to service: "

    const-string v1, "Calling connect() while still connected, missing disconnect() for "

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez p2, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-ne v5, v6, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzv:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzs:Landroid/os/IInterface;

    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {p2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_3

    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    if-eqz v7, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    if-eqz p1, :cond_6

    const-string p2, "GmsClient"

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzn:Lcom/google/android/gms/common/internal/zzr;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object p2, p1, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzz:Ljava/lang/String;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzl:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-boolean v8, p1, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/common/internal/zzr;->zzb(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/common/internal/zze;Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_6
    new-instance p1, Lcom/google/android/gms/common/internal/zze;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/zze;-><init>(Lcom/google/android/gms/common/internal/GmsClient;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    new-instance p2, Lcom/google/android/gms/common/internal/zzu;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/common/internal/zzr;->zzc$com$google$android$gms$common$internal$GmsClientSupervisor:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getUseDynamicLookup()Z

    move-result v3

    invoke-direct {p2, v1, v3}, Lcom/google/android/gms/common/internal/zzu;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-boolean p2, p2, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getMinApkVersion()I

    move-result p2

    const v1, 0x1110e58

    if-lt p2, v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzn:Lcom/google/android/gms/common/internal/zzr;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v3, v3, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    iget-object v5, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzz:Ljava/lang/String;

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzl:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-boolean v6, v6, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    new-instance v7, Lcom/google/android/gms/common/internal/zzn;

    invoke-direct {v7, v1, v3, v6, v4}, Lcom/google/android/gms/common/internal/zzn;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    invoke-virtual {p2, v7, p1, v5}, Lcom/google/android/gms/common/internal/zzr;->zzc(Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/internal/zze;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object p2, p1, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GmsClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance p2, Lcom/google/android/gms/common/internal/zzg;

    const/16 v0, 0x10

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/common/internal/zzg;-><init>(Lcom/google/android/gms/common/internal/GmsClient;I)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzb:Lcom/google/android/gms/common/internal/zzb;

    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_a
    iget-object v7, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    if-eqz v7, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzn:Lcom/google/android/gms/common/internal/zzr;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-object p2, p1, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzz:Ljava/lang/String;

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzl:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    iget-boolean v8, p1, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/common/internal/zzr;->zzb(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/common/internal/zze;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzu:Lcom/google/android/gms/common/internal/zze;

    :cond_c
    :goto_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
