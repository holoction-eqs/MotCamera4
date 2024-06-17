.class public final Lcom/google/android/gms/internal/mlkit_common/zzaz;
.super Lcom/google/android/gms/internal/mlkit_common/zzav;
.source "SourceFile"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

.field public final transient zzb:[Ljava/lang/Object;

.field public final transient zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzau;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzav;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzc:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzau;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav;->zza:Lcom/google/android/gms/internal/mlkit_common/zzar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzay;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzaz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav;->zza:Lcom/google/android/gms/internal/mlkit_common/zzar;

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzap;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzc:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav;->zza:Lcom/google/android/gms/internal/mlkit_common/zzar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzay;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzaz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav;->zza:Lcom/google/android/gms/internal/mlkit_common/zzar;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzar;->zza([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
