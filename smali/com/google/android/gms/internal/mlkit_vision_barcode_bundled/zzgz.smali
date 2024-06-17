.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;


# instance fields
.field public zzb:I

.field public zzc:[I

.field public zzd:[Ljava/lang/Object;

.field public zze:I

.field public zzf:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Z

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_5

    aget-object v4, v2, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    add-int/lit16 v1, v0, 0x20f

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    :goto_1
    if-ge v3, p0, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    return v1
.end method

.method public final zza()I
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->$r8$clinit:I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    shl-int/lit8 v2, v3, 0x3

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza()I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/2addr v2, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v3, v3, 0x3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    :goto_1
    add-int/2addr v2, v3

    :goto_2
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zze:I

    return v1

    :cond_6
    return v0
.end method

.method public final zzj(ILjava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzm(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzl(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    and-int/lit8 v3, v1, 0x7

    const/4 v4, 0x3

    ushr-int/2addr v1, v4

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(II)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    sget p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->$r8$clinit:I

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzo(II)V

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzl(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzo(II)V

    goto :goto_1

    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto :goto_1

    :cond_3
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzm(IJ)V

    goto :goto_1

    :cond_4
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final zzm(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-lt v2, p1, :cond_0

    move p1, v2

    :cond_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    :cond_2
    return-void
.end method
