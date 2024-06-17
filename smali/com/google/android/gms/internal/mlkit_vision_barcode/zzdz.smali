.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

.field public final zzc:Ljava/lang/Boolean;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/parser/DropShadowEffect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    iget-object v0, p1, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    iget-object v0, p1, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iget-object p1, p1, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    invoke-static {v3, v1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    invoke-static {v3, v4}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    invoke-static {v1, v3}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-static {v1, v3}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
