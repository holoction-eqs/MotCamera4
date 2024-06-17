.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[B

.field public final zze:[Landroid/graphics/Point;

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zza:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzc:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzd:[B

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeByteArray(Landroid/os/Parcel;I[B)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zze:[Landroid/graphics/Point;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzf:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xf

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    invoke-static {p1, v1, p0, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
