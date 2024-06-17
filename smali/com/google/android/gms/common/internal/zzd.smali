.class public final Lcom/google/android/gms/common/internal/zzd;
.super Lcom/google/android/gms/internal/base/zab;
.source "SourceFile"


# instance fields
.field public zza:Lcom/google/android/gms/common/internal/GmsClient;

.field public final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/GmsClient;I)V
    .locals 2

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzd;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/internal/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/zzj;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    const-string v5, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {p2, v5}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iput-object v4, p2, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/GmsClient;->usesClientTelemetry()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v4, Lcom/google/android/gms/common/internal/zzj;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v5

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    :goto_0
    monitor-enter v5

    if-nez p2, :cond_2

    :try_start_0
    sget-object p2, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzb:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    goto :goto_1

    :cond_2
    iget-object v6, v5, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v6, :cond_3

    iget v6, v6, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    iget v7, p2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    if-ge v6, v7, :cond_4

    :cond_3
    :goto_1
    iput-object p2, v5, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_5
    :goto_2
    iget-object p2, v4, Lcom/google/android/gms/common/internal/zzj;->zza:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    const-string v5, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v4, v5}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/android/gms/common/internal/zzf;

    invoke-direct {v5, v4, p1, v3, p2}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/GmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, v4, Lcom/google/android/gms/common/internal/GmsClient;->zzb:Lcom/google/android/gms/common/internal/zzb;

    iget p2, p0, Lcom/google/android/gms/common/internal/zzd;->zzb:I

    invoke-virtual {p1, v2, p2, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/common/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->zzb(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    const-string v5, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {p2, v5}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/android/gms/common/internal/zzf;

    invoke-direct {v5, p2, p1, v3, v4}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/GmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p2, Lcom/google/android/gms/common/internal/GmsClient;->zzb:Lcom/google/android/gms/common/internal/zzb;

    iget p2, p0, Lcom/google/android/gms/common/internal/zzd;->zzb:I

    invoke-virtual {p1, v2, p2, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zza:Lcom/google/android/gms/common/internal/GmsClient;

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4
    return v2
.end method
