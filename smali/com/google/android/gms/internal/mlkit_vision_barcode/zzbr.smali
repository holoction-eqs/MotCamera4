.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbf;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

.field public final zzb:Ljava/lang/Object;

.field public zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbf;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzb:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzc:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzb:Ljava/lang/Object;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zza()V

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzc:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzb:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zza()V

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzc:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v0, p0

    aput-object p1, v0, p0

    return-object v1
.end method

.method public final zza()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzc:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzb:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    if-eq v0, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzc:I

    iget-object v1, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Lkotlin/jvm/JvmClassMappingKt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzd:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzq(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;->zzc:I

    return-void
.end method
