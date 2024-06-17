.class public final Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:I

.field public final zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zza;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    iput p2, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzd:I

    iput p3, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zze:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzd:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget p0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zze:I

    invoke-static {p1, v0, p0}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
