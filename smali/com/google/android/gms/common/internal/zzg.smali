.class public final Lcom/google/android/gms/common/internal/zzg;
.super Lcom/google/android/gms/common/internal/zza;
.source "SourceFile"


# instance fields
.field public final synthetic zze:Lcom/google/android/gms/common/internal/GmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/GmsClient;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzg;->zze:Lcom/google/android/gms/common/internal/GmsClient;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/zza;-><init>(Lcom/google/android/gms/common/internal/GmsClient;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzg;->zze:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final zzd()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzg;->zze:Lcom/google/android/gms/common/internal/GmsClient;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p0, 0x1

    return p0
.end method
