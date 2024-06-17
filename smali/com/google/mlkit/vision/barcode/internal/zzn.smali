.class public final Lcom/google/mlkit/vision/barcode/internal/zzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzj;


# instance fields
.field public zza:Z

.field public final zzb:Ljava/lang/Object;

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

.field public zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzc:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzb:Ljava/lang/Object;

    iget p1, p2, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    iput p1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;->zza:I

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/ArrayList;
    .locals 9

    const-string v0, "Unsupported image format: "

    iget-object v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzc()Z

    :cond_0
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-eqz p0, :cond_6

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    iget v4, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    iget v1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    invoke-static {v1}, Lkotlin/io/ExceptionsKt;->convertToMVRotation(I)I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;-><init>(JIIII)V

    :try_start_0
    iget v1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_4

    const/16 v4, 0x11

    if-eq v1, v4, :cond_3

    const/16 v4, 0x23

    if-eq v1, v4, :cond_2

    const v2, 0x32315659

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzml;->convertToNv21Buffer(Lcom/google/mlkit/vision/common/InputImage;)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    invoke-static {v2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    throw v2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;->zze(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;)[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    move-object p0, p1

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p0

    :goto_2
    if-ge v5, v0, :cond_5

    aget-object v1, p0, v5

    new-instance v2, Lcom/google/mlkit/vision/barcode/common/Barcode;

    new-instance v4, Lcom/google/mlkit/vision/barcode/internal/zzk;

    invoke-direct {v4, v1, v3}, Lcom/google/mlkit/vision/barcode/internal/zzk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;I)V

    invoke-direct {v2, v4}, Lcom/google/mlkit/vision/barcode/common/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzk;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-object p1

    :goto_3
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to detect with legacy barcode detector"

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_6
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string p1, "Error initializing the legacy barcode scanner."

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/base/zaa;->zzc(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LegacyBarcodeScanner"

    const-string v2, "Failed to release legacy barcode detector."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/adobe/xmp/XMPMetaFactory$1;

    const-string v4, "com.google.android.gms.vision.dynamite"

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v3, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;->$r8$clinit:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzai;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzai;

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzag;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzag;-><init>(Landroid/os/IBinder;)V

    move-object v1, v3

    :goto_0
    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v4, v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzag;

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzag;->zzd(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    if-nez v1, :cond_4

    :try_start_1
    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "LegacyBarcodeScanner"

    const-string v2, "Request optional module download."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Landroid/content/Context;

    const-string v1, "barcode"

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzar;->zza:Lcom/google/android/gms/internal/mlkit_common/zzap;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lokio/SegmentPool;->zza(I[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_common/zzax;

    invoke-direct {v4, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzax;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, v4}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    iput-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Z

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-static {v3, p0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V

    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Waiting for the barcode module to be downloaded. Please wait."

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-static {v3, p0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :goto_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to load deprecated vision dynamite module."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_3
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create legacy barcode detector."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
