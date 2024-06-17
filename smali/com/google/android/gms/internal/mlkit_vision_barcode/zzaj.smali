.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:J

.field public final zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzb;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzb;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zza:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zzb:I

    iput p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zzd:J

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zze:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zza:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zzb:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zzc:I

    invoke-static {p1, v0, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zzd:J

    invoke-static {p1, v0, v1, v2}, Landroidx/media3/common/Format$1;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->zze:I

    invoke-static {p1, v0, p0}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p2, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
