.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Joiner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
