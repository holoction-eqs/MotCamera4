.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final zzd:Ljava/lang/Object;


# instance fields
.field public transient zza:[I

.field public transient zzb:[Ljava/lang/Object;

.field public transient zzc:[Ljava/lang/Object;

.field public transient zze:Ljava/lang/Object;

.field public transient zzf:I

.field public transient zzg:I

.field public transient zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

.field public transient zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

.field public transient zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, [S

    if-eqz v1, :cond_2

    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    :cond_2
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const v4, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzq(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/JvmClassMappingKt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzq(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbn;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzo()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzo()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    int-to-double v7, v6

    double-to-int v7, v7

    if-le v5, v7, :cond_0

    add-int/2addr v6, v6

    if-gtz v6, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    :cond_0
    const/4 v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Lkotlin/UnsignedKt;->zzd(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x20

    iget v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    and-int/lit8 v6, v6, -0x20

    and-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    new-array v5, v3, [I

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    new-array v5, v3, [Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Arrays already allocated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_e

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    add-int/lit8 v9, v8, 0x1

    invoke-static/range {p1 .. p1}, Lkotlin/io/ExceptionsKt;->zza(Ljava/lang/Object;)I

    move-result v10

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    and-int/lit8 v3, v3, 0x1f

    const/4 v11, 0x1

    shl-int v3, v11, v3

    add-int/lit8 v12, v3, -0x1

    and-int v3, v10, v12

    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v13}, Lkotlin/UnsignedKt;->zzc(ILjava/lang/Object;)I

    move-result v13

    if-nez v13, :cond_4

    if-le v9, v12, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3, v9}, Lkotlin/UnsignedKt;->zze(Ljava/lang/Object;II)V

    goto/16 :goto_5

    :cond_4
    not-int v15, v12

    and-int v3, v10, v15

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_1
    add-int/2addr v13, v4

    aget v18, v5, v13

    and-int v14, v18, v15

    if-ne v14, v3, :cond_6

    aget-object v4, v6, v13

    invoke-static {v1, v4}, Lkotlin/jvm/JvmClassMappingKt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    aget-object v0, v7, v13

    aput-object v2, v7, v13

    return-object v0

    :cond_6
    :goto_2
    and-int v4, v18, v12

    move/from16 v18, v3

    add-int/lit8 v3, v17, 0x1

    if-nez v4, :cond_d

    const/16 v4, 0x9

    if-lt v3, v4, :cond_a

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    and-int/lit8 v3, v3, 0x1f

    shl-int v3, v11, v3

    const/4 v13, -0x1

    add-int/2addr v3, v13

    add-int/2addr v3, v11

    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move/from16 v16, v13

    :cond_8
    :goto_3
    if-ltz v16, :cond_9

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v3, v16

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v5, v5, v16

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v16, 0x1

    iget v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    if-ge v3, v5, :cond_7

    move/from16 v16, v3

    goto :goto_3

    :cond_9
    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    add-int/lit8 v3, v3, 0x20

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    if-le v9, v12, :cond_b

    :goto_4
    invoke-static {v12}, Lkotlin/UnsignedKt;->zza(I)I

    move-result v3

    invoke-virtual {v0, v12, v3, v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzr(IIII)I

    move-result v12

    goto :goto_5

    :cond_b
    and-int v3, v9, v12

    or-int/2addr v3, v14

    aput v3, v5, v13

    :goto_5
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v3

    if-le v9, v3, :cond_c

    ushr-int/lit8 v4, v3, 0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v3

    or-int/2addr v4, v11

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_c

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    :cond_c
    not-int v3, v12

    and-int/2addr v3, v10

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput v3, v4, v8

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v1, v3, v8

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v2, v1, v8

    iput v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    const/4 v14, 0x0

    return-object v14

    :cond_d
    move/from16 v17, v3

    move v13, v4

    move/from16 v3, v18

    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_e
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzd:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    :goto_0
    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    :cond_0
    return-object v0
.end method

.method public final zzj()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzn(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, p0, :cond_2

    aget-object v6, v2, p0

    aput-object v6, v2, p1

    aget-object v7, v3, p0

    aput-object v7, v3, p1

    aput-object v5, v2, p0

    aput-object v5, v3, p0

    aget v2, v1, p0

    aput v2, v1, p1

    aput v4, v1, p0

    invoke-static {v6}, Lkotlin/io/ExceptionsKt;->zza(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    invoke-static {v2, v0}, Lkotlin/UnsignedKt;->zzc(ILjava/lang/Object;)I

    move-result v3

    add-int/lit8 p0, p0, 0x1

    if-eq v3, p0, :cond_1

    :goto_0
    add-int/lit8 v3, v3, -0x1

    aget v0, v1, v3

    and-int v2, v0, p2

    if-eq v2, p0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    not-int p0, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    aput p0, v1, v3

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, v2, p1}, Lkotlin/UnsignedKt;->zze(Ljava/lang/Object;II)V

    return-void

    :cond_2
    aput-object v5, v2, p1

    aput-object v5, v3, p1

    aput v4, v1, p1

    return-void
.end method

.method public final zzo()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzq(Ljava/lang/Object;)I
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzo()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lkotlin/io/ExceptionsKt;->zza(Ljava/lang/Object;)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int v4, v0, v2

    invoke-static {v4, v3}, Lkotlin/UnsignedKt;->zzc(ILjava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_4

    not-int v4, v2

    and-int/2addr v0, v4

    :cond_1
    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v6, v6, v3

    invoke-static {p1, v6}, Lkotlin/jvm/JvmClassMappingKt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    and-int v3, v5, v2

    if-nez v3, :cond_1

    :cond_4
    return v1
.end method

.method public final zzr(IIII)I
    .locals 8

    add-int/lit8 v0, p2, -0x1

    invoke-static {p2}, Lkotlin/UnsignedKt;->zzd(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p4, :cond_0

    and-int/2addr p3, v0

    add-int/lit8 p4, p4, 0x1

    invoke-static {p2, p3, p4}, Lkotlin/UnsignedKt;->zze(Ljava/lang/Object;II)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    invoke-static {v1, p3}, Lkotlin/UnsignedKt;->zzc(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, v0

    invoke-static {v6, p2}, Lkotlin/UnsignedKt;->zzc(ILjava/lang/Object;)I

    move-result v7

    invoke-static {p2, v6, v2}, Lkotlin/UnsignedKt;->zze(Ljava/lang/Object;II)V

    not-int v2, v0

    and-int v6, v7, v0

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    and-int/lit8 p2, p2, -0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    return v0
.end method

.method public final zzs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzo()Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzd:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x1

    shl-int v0, v2, v0

    const/4 v2, -0x1

    add-int/2addr v0, v2

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zze:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zza:[I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    move-object v3, p1

    move v5, v0

    invoke-static/range {v3 .. v9}, Lkotlin/UnsignedKt;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzn(II)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    return-object v1
.end method
