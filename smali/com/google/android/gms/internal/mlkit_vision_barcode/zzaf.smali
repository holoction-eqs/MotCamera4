.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;
.super Lcom/google/android/gms/internal/base/zaa;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;)[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
