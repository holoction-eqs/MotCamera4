.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;


# instance fields
.field public transient zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;

.field public transient zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzn()Ljava/util/Map;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzn()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzn()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzn()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzn()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;->zza:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final zzo()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;->zza:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;

    return-object v1

    :cond_0
    return-object v0
.end method
