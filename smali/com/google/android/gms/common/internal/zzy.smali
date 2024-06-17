.class public abstract Lcom/google/android/gms/common/internal/zzy;
.super Lcom/google/android/gms/internal/base/zab;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/zzz;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/common/zzj;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    iget p0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/google/android/gms/common/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->zzf()[B

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p2
.end method
