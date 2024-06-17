.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

.field public final zzb:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/model/MutablePair;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    iget-object p1, p1, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    invoke-static {v3, v1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0, p0}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, p0}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    filled-new-array {p0, v0, v1, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
