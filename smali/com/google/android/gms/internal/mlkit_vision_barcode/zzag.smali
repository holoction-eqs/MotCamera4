.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzag;
.super Lcom/google/android/gms/internal/base/zaa;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzai;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
