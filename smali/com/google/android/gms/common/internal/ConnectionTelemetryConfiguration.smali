.class public final Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:[I

.field public final zze:I

.field public final zzf:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zza;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzd:[I

    iput p5, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzf:[I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzb:Z

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzd:[I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {v1, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    :goto_0
    const/4 p2, 0x5

    iget v1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzf:[I

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x6

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    :goto_1
    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
