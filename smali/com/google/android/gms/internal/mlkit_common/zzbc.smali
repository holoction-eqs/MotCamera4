.class public final Lcom/google/android/gms/internal/mlkit_common/zzbc;
.super Lcom/google/android/gms/internal/mlkit_common/zzau;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzbc;


# instance fields
.field public final transient zzb:[Ljava/lang/Object;

.field public final transient zzc:Ljava/lang/Object;

.field public final transient zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzbc;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbc;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzau;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzb:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzd:I

    return-void
.end method

.method public static zzg(I[Ljava/lang/Object;Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/google/android/gms/internal/mlkit_common/zzbc;
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzbc;

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_common/zzbc;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    array-length v6, v1

    shr-int/2addr v6, v4

    invoke-static {v0, v6}, Lkotlin/collections/ArraysUtilJVM;->zzb(II)V

    const/4 v6, 0x2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    const v8, 0x2ccccccc

    if-ge v7, v8, :cond_2

    add-int/lit8 v8, v7, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    :goto_0
    add-int/2addr v8, v8

    int-to-double v9, v8

    const-wide v11, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v9, v11

    int-to-double v11, v7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_3

    goto :goto_0

    :cond_2
    const/high16 v8, 0x40000000    # 2.0f

    if-ge v7, v8, :cond_17

    :cond_3
    if-ne v0, v4, :cond_4

    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_b

    :cond_4
    add-int/lit8 v7, v8, -0x1

    const/16 v9, 0x80

    const/4 v10, -0x1

    if-gt v8, v9, :cond_a

    new-array v8, v8, [B

    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    move v9, v3

    move v10, v9

    :goto_1
    if-ge v9, v0, :cond_8

    add-int v11, v10, v10

    add-int v12, v9, v9

    aget-object v13, v1, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v12, v4

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lkotlin/ExceptionsKt;->zza(I)I

    move-result v14

    :goto_2
    and-int/2addr v14, v7

    aget-byte v15, v8, v14

    const/16 v3, 0xff

    and-int/2addr v15, v3

    if-ne v15, v3, :cond_6

    int-to-byte v3, v11

    aput-byte v3, v8, v14

    if-ge v10, v9, :cond_5

    aput-object v13, v1, v11

    xor-int/lit8 v3, v11, 0x1

    aput-object v12, v1, v3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    aget-object v3, v1, v15

    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    xor-int/lit8 v3, v15, 0x1

    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzas;

    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v13, v12, v11}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v3

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    if-ne v10, v0, :cond_9

    move-object v5, v8

    goto/16 :goto_b

    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v8, v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_b

    :cond_a
    const v3, 0x8000

    if-gt v8, v3, :cond_f

    new-array v3, v8, [S

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([SS)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v8, v0, :cond_e

    add-int v10, v9, v9

    add-int v11, v8, v8

    aget-object v12, v1, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v11, v4

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lkotlin/ExceptionsKt;->zza(I)I

    move-result v13

    :goto_5
    and-int/2addr v13, v7

    aget-short v14, v3, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_c

    int-to-short v14, v10

    aput-short v14, v3, v13

    if-ge v9, v8, :cond_b

    aput-object v12, v1, v10

    xor-int/lit8 v10, v10, 0x1

    aput-object v11, v1, v10

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    xor-int/lit8 v5, v14, 0x1

    new-instance v10, Lcom/google/android/gms/internal/mlkit_common/zzas;

    aget-object v13, v1, v5

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v5

    move-object v5, v10

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_e
    if-ne v9, v0, :cond_14

    goto :goto_a

    :cond_f
    new-array v3, v8, [I

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    if-ge v8, v0, :cond_13

    add-int v11, v9, v9

    add-int v12, v8, v8

    aget-object v13, v1, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v12, v4

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lkotlin/ExceptionsKt;->zza(I)I

    move-result v14

    :goto_8
    and-int/2addr v14, v7

    aget v15, v3, v14

    if-ne v15, v10, :cond_11

    aput v11, v3, v14

    if-ge v9, v8, :cond_10

    aput-object v13, v1, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v12, v1, v11

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    aget-object v10, v1, v15

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    xor-int/lit8 v5, v15, 0x1

    new-instance v10, Lcom/google/android/gms/internal/mlkit_common/zzas;

    aget-object v11, v1, v5

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v13, v12, v11}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v5

    move-object v5, v10

    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v10, -0x1

    goto :goto_7

    :cond_12
    add-int/lit8 v14, v14, 0x1

    const/4 v10, -0x1

    goto :goto_8

    :cond_13
    if-ne v9, v0, :cond_14

    :goto_a
    move-object v5, v3

    goto :goto_b

    :cond_14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    :goto_b
    instance-of v3, v5, [Ljava/lang/Object;

    if-eqz v3, :cond_16

    check-cast v5, [Ljava/lang/Object;

    aget-object v0, v5, v6

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzas;

    if-eqz v2, :cond_15

    iput-object v0, v2, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v5, v0

    aget-object v2, v5, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v0

    move v0, v2

    goto :goto_c

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_16
    :goto_c
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzbc;

    invoke-direct {v2, v0, v5, v1}, Lcom/google/android/gms/internal/mlkit_common/zzbc;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-object v2

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzb:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzd:I

    if-ne v3, v1, :cond_2

    const/4 p0, 0x0

    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-object p0, v2, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzc:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, p0, [B

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    move-object v3, p0

    check-cast v3, [B

    array-length p0, v3

    add-int/lit8 v5, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lkotlin/ExceptionsKt;->zza(I)I

    move-result p0

    :goto_1
    and-int/2addr p0, v5

    aget-byte v4, v3, p0

    const/16 v6, 0xff

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_4

    goto :goto_0

    :cond_4
    aget-object v6, v2, v4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    xor-int/lit8 p0, v4, 0x1

    aget-object p0, v2, p0

    goto :goto_4

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    instance-of v3, p0, [S

    if-eqz v3, :cond_9

    move-object v3, p0

    check-cast v3, [S

    array-length p0, v3

    add-int/lit8 v5, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lkotlin/ExceptionsKt;->zza(I)I

    move-result p0

    :goto_2
    and-int/2addr p0, v5

    aget-short v4, v3, p0

    int-to-char v4, v4

    const v6, 0xffff

    if-ne v4, v6, :cond_7

    goto :goto_0

    :cond_7
    aget-object v6, v2, v4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    xor-int/lit8 p0, v4, 0x1

    aget-object p0, v2, p0

    goto :goto_4

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_9
    check-cast p0, [I

    array-length v3, p0

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lkotlin/ExceptionsKt;->zza(I)I

    move-result v5

    :goto_3
    and-int/2addr v5, v3

    aget v6, p0, v5

    if-ne v6, v4, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-object v7, v2, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    xor-int/lit8 p0, v6, 0x1

    aget-object p0, v2, p0

    :goto_4
    if-nez p0, :cond_b

    return-object v0

    :cond_b
    return-object p0

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzd:I

    return p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_common/zzbb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzbb;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzd:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzbb;-><init>(II[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzaz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzaz;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzb:[Ljava/lang/Object;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaz;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzau;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_common/zzba;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzbb;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbb;-><init>(II[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzba;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzba;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzau;Lcom/google/android/gms/internal/mlkit_common/zzbb;)V

    return-object v1
.end method
