.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;
.source "SourceFile"


# virtual methods
.method public final zze(Ljava/util/Collection;)V
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzb:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzd(I)V

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzb:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->zza(I[Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzb:I

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zzb:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;-><init>(I[Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method
