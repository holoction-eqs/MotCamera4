.class public final Lcom/google/mlkit/vision/barcode/internal/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzj;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;


# instance fields
.field public zzb:Z

.field public zzc:Z

.field public zzd:Z

.field public final zze:Landroid/content/Context;

.field public final zzf:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

.field public zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms.vision.barcode"

    const-string v1, "com.google.android.gms.tflite_dynamite"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/ArrayList;
    .locals 12

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc()Z

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/base/zaa;->zzc(ILandroid/os/Parcel;)V

    iput-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to init barcode scanner."

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_0
    iget p0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iget v1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v3, 0x0

    const/16 v4, 0x23

    if-eq v1, v4, :cond_7

    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iget v6, p1, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    invoke-static {v6}, Lkotlin/io/ExceptionsKt;->convertToMVRotation(I)I

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget v9, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    const/16 v10, 0x11

    const/4 v11, 0x3

    if-eq v9, v10, :cond_4

    if-eq v9, v4, :cond_3

    const v3, 0x32315659

    if-ne v9, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const-string v0, "Unsupported image format: "

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v11}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v3, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    move-object p1, v3

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v3

    sget v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x4f45

    invoke-static {p1, v3}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result p1

    invoke-static {v3, v2, v1}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-static {v3, v1, p0}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {v3, v11, v5}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 p0, 0x4

    invoke-static {v3, p0, v6}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 p0, 0x5

    invoke-static {v3, p0, v7, v8}, Landroidx/media3/common/Format$1;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v3}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    invoke-virtual {v0, v11, v3}, Lcom/google/android/gms/internal/base/zaa;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    new-instance v1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzk;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/mlkit/vision/barcode/internal/zzk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;I)V

    invoke-direct {v1, v2}, Lcom/google/mlkit/vision/barcode/common/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzk;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to run barcode scanner."

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_6
    invoke-static {v3}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    throw v3

    :cond_7
    invoke-static {v3}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    throw v3
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/base/zaa;->zzc(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecoupledBarcodeScanner"

    const-string v2, "Failed to release barcode scanner."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Z

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 8

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    const-string v1, "com.google.mlkit.dynamite.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:L_COROUTINE/ArtificialStackFrames;

    const-string v2, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator"

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thick barcode scanner."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to load the bundled barcode module."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_2
    iput-boolean v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    sget-object v1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v1

    const v2, 0xd33d260

    sget-object v6, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    if-lt v1, v2, :cond_3

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    invoke-static {v6, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_common/zzbc;)[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    :try_start_1
    new-instance v2, Lcom/google/android/gms/common/internal/service/zao;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/internal/service/zao;-><init>(Landroid/content/Context;)V

    new-array v6, v3, [Lcom/google/android/gms/common/api/OptionalModuleApi;

    new-instance v7, Lcom/google/mlkit/common/sdkinternal/zzo;

    invoke-direct {v7, v1, v4}, Lcom/google/mlkit/common/sdkinternal/zzo;-><init>([Lcom/google/android/gms/common/Feature;I)V

    aput-object v7, v6, v4

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/internal/service/zao;->areModulesAvailable([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v1

    sget-object v2, Lkotlin/UNINITIALIZED_VALUE;->zza$4:Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->await(Lcom/google/android/gms/tasks/zzw;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    iget-boolean v4, v1, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zaa:Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "OptionalModuleUtils"

    const-string v6, "Failed to complete the task of features availability check"

    invoke-static {v2, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;->zzi(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzas;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzas;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/adobe/xmp/XMPMetaFactory$1;

    invoke-static {v0, v6, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :cond_4
    move v4, v3

    :catch_3
    :goto_2
    if-nez v4, :cond_6

    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Z

    if-nez v1, :cond_5

    const-string v1, "barcode"

    const-string v2, "tflite_dynamite"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    iput-boolean v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Z

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-static {v5, p0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V

    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Waiting for the barcode module to be downloaded. Please wait."

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/adobe/xmp/XMPMetaFactory$1;

    const-string v1, "com.google.android.gms.vision.barcode"

    const-string v2, "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator"

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-static {v5, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    return p0

    :catch_4
    move-exception p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzC:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-static {v5, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thin barcode scanner."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsy;->$r8$clinit:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    const-string p3, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of v1, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsz;

    if-eqz v1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsz;

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsx;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsx;-><init>(Landroid/os/IBinder;)V

    :goto_0
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iget v0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsx;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0x4f45

    invoke-static {v2, v1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v2

    invoke-static {v1, p1, v0}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzb:Z

    invoke-static {v1, v0, p0}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-static {v2, v1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/base/zaa;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    if-eqz p3, :cond_3

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsw;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
