.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:I

.field public final zze:[Landroid/graphics/Point;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

.field public final zzo:[B

.field public final zzp:Z

.field public final zzq:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzb;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzb;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;[BZD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zza:I

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzo:[B

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzc:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzd:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzp:Z

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzq:D

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zza:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzc:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzd:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzg;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 p2, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzo:[B

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeByteArray(Landroid/os/Parcel;I[B)V

    const/16 p2, 0x11

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzp:Z

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x12

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzq:D

    invoke-static {p1, p2, v1, v2}, Landroidx/media3/common/Format$1;->writeDouble(Landroid/os/Parcel;ID)V

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
