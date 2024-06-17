.class public abstract Lcom/google/mlkit/vision/barcode/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final zzb:Landroid/util/SparseArray;

.field public static final zzc:Landroid/util/SparseArray;

.field public static final zzd:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v2, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v6, 0x8

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v7, 0x10

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v8, 0x20

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v9, 0x40

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v10, 0x80

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v11, 0x100

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v12, 0x200

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v13, 0x400

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v14, 0x800

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v15, 0x1000

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;
    .locals 4

    iget p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;-><init>()V

    sget-object v1, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzd:Ljava/util/HashMap;

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zze(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;-><init>(Lcom/google/common/base/Joiner;)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zza;

    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zza;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;)V

    return-void
.end method

.method public static zzf()Z
    .locals 3

    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/zzb;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    const-string v2, "com.google.mlkit.dynamite.barcode"

    invoke-static {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v1
.end method
