.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

.field public final zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

.field public final zzf:[Ljava/lang/String;

.field public final zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzb;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzb;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzf:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzc:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzf:[Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;)V

    const/16 v1, 0x8

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

    invoke-static {p1, v1, p0, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
