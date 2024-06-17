.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;",
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

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzb;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzb;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zza:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzc:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzd:[B

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeByteArray(Landroid/os/Parcel;I[B)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zze:[Landroid/graphics/Point;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzf:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xf

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    invoke-static {p1, v1, p0, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
