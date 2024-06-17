.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;


# static fields
.field public static final zza:[I

.field public static final zzb:Lsun/misc/Unsafe;


# instance fields
.field public final zzc:[I

.field public final zzd:[Ljava/lang/Object;

.field public final zze:I

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:[I

.field public final zzk:I

.field public final zzl:I

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Z[IIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzf:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    if-eqz p12, :cond_0

    instance-of p1, p5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl:I

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    return-void
.end method

.method public static zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static zzG(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzS(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzX()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzm(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-void
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    :cond_0
    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;
    .locals 34

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    if-eqz v1, :cond_33

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzc()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_1

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :cond_1
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_1
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    add-int/lit8 v10, v10, 0xd

    move v5, v11

    goto :goto_1

    :cond_2
    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    move v5, v11

    :cond_3
    if-nez v8, :cond_4

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zza:[I

    move v12, v4

    move v13, v12

    move v14, v13

    move/from16 v20, v14

    move/from16 v21, v20

    move/from16 v25, v21

    move/from16 v16, v5

    move-object/from16 v24, v8

    move/from16 v5, v25

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    const/16 v10, 0xd

    :goto_2
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_5

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v11

    goto :goto_2

    :cond_5
    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    move v8, v11

    :cond_6
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_3
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_7

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_3

    :cond_7
    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    move v10, v12

    :cond_8
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_4
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_9

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_4

    :cond_9
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_a
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_5
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_5

    :cond_b
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_c
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_6
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_6

    :cond_d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_e
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_7
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_7

    :cond_f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_10
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_8
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_11

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_8

    :cond_11
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_12
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_13

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v17

    goto :goto_9

    :cond_13
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v17

    :cond_14
    add-int v4, v15, v13

    add-int/2addr v4, v14

    add-int v14, v5, v5

    add-int/2addr v14, v8

    new-array v8, v4, [I

    move-object/from16 v24, v8

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v25, v15

    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zze()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    add-int v26, v25, v13

    add-int v10, v12, v12

    mul-int/lit8 v12, v12, 0x3

    new-array v11, v12, [I

    new-array v10, v10, [Ljava/lang/Object;

    move/from16 v12, v16

    move/from16 v16, v25

    move/from16 v17, v26

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_b
    const/4 v9, 0x2

    if-ne v1, v9, :cond_15

    const/16 v23, 0x1

    goto :goto_c

    :cond_15
    const/16 v23, 0x0

    :goto_c
    if-ge v12, v3, :cond_32

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_17

    and-int/lit16 v12, v12, 0x1fff

    const/16 v19, 0xd

    :goto_d
    add-int/lit8 v22, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_16

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v19

    or-int/2addr v12, v9

    add-int/lit8 v19, v19, 0xd

    move/from16 v9, v22

    goto :goto_d

    :cond_16
    shl-int v9, v9, v19

    or-int/2addr v12, v9

    move/from16 v9, v22

    :cond_17
    add-int/lit8 v19, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_19

    and-int/lit16 v9, v9, 0x1fff

    move/from16 v7, v19

    const/16 v19, 0xd

    :goto_e
    add-int/lit8 v27, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_18

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v19

    or-int/2addr v9, v7

    add-int/lit8 v19, v19, 0xd

    move/from16 v7, v27

    goto :goto_e

    :cond_18
    shl-int v7, v7, v19

    or-int/2addr v9, v7

    move/from16 v7, v27

    goto :goto_f

    :cond_19
    move/from16 v7, v19

    :goto_f
    and-int/lit16 v6, v9, 0x400

    if-eqz v6, :cond_1a

    add-int/lit8 v6, v13, 0x1

    aput v15, v24, v13

    move v13, v6

    :cond_1a
    and-int/lit16 v6, v9, 0xff

    move/from16 v27, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    move/from16 v30, v3

    const/16 v3, 0x33

    if-lt v6, v3, :cond_22

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v7, v3, :cond_1c

    and-int/lit16 v7, v7, 0x1fff

    const/16 v31, 0xd

    move/from16 v33, v28

    move/from16 v28, v7

    move/from16 v7, v33

    :goto_10
    add-int/lit8 v32, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v3, :cond_1b

    and-int/lit16 v3, v7, 0x1fff

    shl-int v3, v3, v31

    or-int v28, v28, v3

    add-int/lit8 v31, v31, 0xd

    move/from16 v7, v32

    const v3, 0xd800

    goto :goto_10

    :cond_1b
    shl-int v3, v7, v31

    or-int v7, v28, v3

    move/from16 v3, v32

    goto :goto_11

    :cond_1c
    move/from16 v3, v28

    :goto_11
    move/from16 v28, v3

    add-int/lit8 v3, v6, -0x33

    move/from16 v31, v13

    const/16 v13, 0x9

    if-eq v3, v13, :cond_1e

    const/16 v13, 0x11

    if-ne v3, v13, :cond_1d

    goto :goto_12

    :cond_1d
    const/16 v13, 0xc

    if-ne v3, v13, :cond_1f

    if-nez v23, :cond_1f

    div-int/lit8 v3, v15, 0x3

    add-int/2addr v3, v3

    const/4 v13, 0x1

    add-int/2addr v3, v13

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v4, v14

    aput-object v14, v10, v3

    goto :goto_13

    :cond_1e
    :goto_12
    div-int/lit8 v3, v15, 0x3

    add-int/2addr v3, v3

    const/4 v13, 0x1

    add-int/2addr v3, v13

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v4, v14

    aput-object v14, v10, v3

    :goto_13
    move v14, v13

    :cond_1f
    add-int/2addr v7, v7

    aget-object v3, v4, v7

    instance-of v13, v3, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_20

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_14

    :cond_20
    check-cast v3, Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v4, v7

    :goto_14
    move/from16 v23, v14

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v3, v13

    add-int/lit8 v7, v7, 0x1

    aget-object v13, v4, v7

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v4, v7

    :goto_15
    invoke-virtual {v1, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v1, v13

    move-object v14, v2

    const/4 v7, 0x0

    const/16 v22, 0x1

    goto/16 :goto_20

    :cond_22
    move/from16 v31, v13

    add-int/lit8 v3, v14, 0x1

    aget-object v13, v4, v14

    check-cast v13, Ljava/lang/String;

    invoke-static {v8, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v14, 0x9

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x11

    if-ne v6, v14, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v14, 0x1b

    if-eq v6, v14, :cond_29

    const/16 v14, 0x31

    if-ne v6, v14, :cond_24

    goto :goto_19

    :cond_24
    const/16 v14, 0xc

    if-eq v6, v14, :cond_27

    const/16 v14, 0x1e

    if-eq v6, v14, :cond_27

    const/16 v14, 0x2c

    if-ne v6, v14, :cond_25

    goto :goto_17

    :cond_25
    const/16 v14, 0x32

    if-ne v6, v14, :cond_28

    add-int/lit8 v14, v16, 0x1

    aput v15, v24, v16

    div-int/lit8 v16, v15, 0x3

    add-int/lit8 v23, v3, 0x1

    aget-object v3, v4, v3

    add-int v16, v16, v16

    aput-object v3, v10, v16

    and-int/lit16 v3, v9, 0x800

    if-eqz v3, :cond_26

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v3, v23, 0x1

    aget-object v23, v4, v23

    aput-object v23, v10, v16

    move/from16 v16, v14

    goto :goto_18

    :cond_26
    move/from16 v16, v14

    :goto_16
    move/from16 v3, v23

    goto :goto_18

    :cond_27
    :goto_17
    if-nez v23, :cond_28

    div-int/lit8 v14, v15, 0x3

    add-int/2addr v14, v14

    const/16 v22, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v23, v3, 0x1

    aget-object v3, v4, v3

    aput-object v3, v10, v14

    goto :goto_16

    :cond_28
    :goto_18
    const/16 v22, 0x1

    goto :goto_1b

    :cond_29
    :goto_19
    div-int/lit8 v14, v15, 0x3

    add-int/2addr v14, v14

    const/16 v22, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v23, v3, 0x1

    aget-object v3, v4, v3

    aput-object v3, v10, v14

    move/from16 v3, v23

    goto :goto_1b

    :cond_2a
    :goto_1a
    const/16 v22, 0x1

    div-int/lit8 v14, v15, 0x3

    add-int/2addr v14, v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v23

    aput-object v23, v10, v14

    :goto_1b
    invoke-virtual {v1, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    and-int/lit16 v14, v9, 0x1000

    move/from16 v23, v3

    const/16 v3, 0x1000

    if-ne v14, v3, :cond_2e

    const/16 v3, 0x11

    if-gt v6, v3, :cond_2e

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v14, 0xd800

    if-lt v7, v14, :cond_2c

    and-int/lit16 v7, v7, 0x1fff

    const/16 v19, 0xd

    :goto_1c
    add-int/lit8 v29, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_2b

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v19

    or-int/2addr v7, v3

    add-int/lit8 v19, v19, 0xd

    move/from16 v3, v29

    goto :goto_1c

    :cond_2b
    shl-int v3, v3, v19

    or-int/2addr v7, v3

    goto :goto_1d

    :cond_2c
    move/from16 v29, v3

    :goto_1d
    add-int v3, v5, v5

    div-int/lit8 v19, v7, 0x20

    add-int v19, v19, v3

    aget-object v3, v4, v19

    instance-of v14, v3, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_2d

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_1e

    :cond_2d
    check-cast v3, Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v4, v19

    :goto_1e
    move-object v14, v2

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v7, v7, 0x20

    goto :goto_1f

    :cond_2e
    move-object v14, v2

    const v1, 0xfffff

    move/from16 v29, v7

    const/4 v7, 0x0

    :goto_1f
    const/16 v2, 0x12

    if-lt v6, v2, :cond_2f

    const/16 v2, 0x31

    if-gt v6, v2, :cond_2f

    add-int/lit8 v2, v17, 0x1

    aput v13, v24, v17

    move/from16 v17, v2

    :cond_2f
    move v3, v13

    move/from16 v28, v29

    :goto_20
    add-int/lit8 v2, v15, 0x1

    aput v12, v11, v15

    add-int/lit8 v12, v2, 0x1

    and-int/lit16 v13, v9, 0x200

    if-eqz v13, :cond_30

    const/high16 v13, 0x20000000

    goto :goto_21

    :cond_30
    const/4 v13, 0x0

    :goto_21
    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_31

    const/high16 v9, 0x10000000

    goto :goto_22

    :cond_31
    const/4 v9, 0x0

    :goto_22
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v9, v13

    or-int/2addr v6, v9

    or-int/2addr v3, v6

    aput v3, v11, v2

    add-int/lit8 v15, v12, 0x1

    shl-int/lit8 v2, v7, 0x14

    or-int/2addr v1, v2

    aput v1, v11, v12

    move-object v2, v14

    move/from16 v14, v23

    move/from16 v1, v27

    move/from16 v12, v28

    move/from16 v3, v30

    move/from16 v13, v31

    const v6, 0xd800

    goto/16 :goto_b

    :cond_32
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v22

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move-object/from16 v29, p3

    invoke-direct/range {v17 .. v29}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Z[IIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;)V

    return-object v1

    :cond_33
    invoke-static/range {p0 .. p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static zzp(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static zzz(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final zzC(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final zzD(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long p0, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final zzE(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long p2, p0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final zzH(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget p0, p0, p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Source subfield "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzI(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget v1, v0, p1

    invoke-virtual {p0, p3, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object p3

    invoke-virtual {p0, p2, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzK(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    aget p1, v0, p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Source subfield "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzJ(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p2, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;IJ)V

    return-void
.end method

.method public final zzK(Ljava/lang/Object;II)V
    .locals 2

    add-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget p0, p0, p3

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;IJ)V

    return-void
.end method

.method public final zzL(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzM(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 3

    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzK(Ljava/lang/Object;II)V

    return-void
.end method

.method public final zzO(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzP(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result p0

    and-int p1, p0, v1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzT(Ljava/lang/Object;II)Z
    .locals 2

    add-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget p0, p0, p3

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v3

    ushr-int/lit8 v4, v3, 0x14

    and-int/lit16 v4, v4, 0xff

    aget v5, v2, v0

    const v6, 0xfffff

    and-int/2addr v3, v6

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzJ:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza()I

    move-result v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzW:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza()I

    move-result v6

    if-gt v4, v6, :cond_0

    add-int/lit8 v6, v0, 0x2

    aget v2, v2, v6

    :cond_0
    int-to-long v2, v3

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_4
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_13

    :pswitch_5
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_9

    :pswitch_9
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v3, :cond_1

    goto/16 :goto_a

    :pswitch_a
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_c

    :pswitch_b
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_13

    :pswitch_c
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_d
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_e

    :pswitch_e
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_11

    :pswitch_10
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_13

    :pswitch_11
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_12
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_13
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_14
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzs(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzq(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzd(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_19
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzv(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1b
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1c
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1d
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzk(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1e
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzx(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1f
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzm(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_20
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_21
    invoke-virtual {v6, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    :goto_3
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    add-int/2addr v3, v4

    goto/16 :goto_12

    :pswitch_22
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzr(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_23
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzp(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_24
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzc(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_25
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzu(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_26
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_27
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_28
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzt(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_29
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2a
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzj(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2b
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzw(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2c
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzl(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2d
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2e
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2f
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_4
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzt(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_30
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v2

    :goto_5
    shl-int/lit8 v4, v5, 0x3

    add-long v5, v2, v2

    const/16 v7, 0x3f

    shr-long/2addr v2, v7

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v4

    xor-long/2addr v2, v5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result v2

    goto/16 :goto_b

    :pswitch_31
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v2

    :goto_6
    shl-int/lit8 v3, v5, 0x3

    add-int v4, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/2addr v2, v3

    goto/16 :goto_15

    :pswitch_32
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_33
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_13

    :pswitch_34
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_d

    :pswitch_35
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v2

    :goto_7
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    goto/16 :goto_f

    :pswitch_36
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_8
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_37
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_9
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v5, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzn(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_38
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v3, :cond_1

    :goto_a
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v3, v5, 0x3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    :goto_b
    add-int/2addr v2, v4

    goto/16 :goto_15

    :cond_1
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzx(Ljava/lang/String;)I

    move-result v2

    goto :goto_f

    :pswitch_39
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_c
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_13

    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_14

    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_d
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v2

    :goto_e
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzu(I)I

    move-result v2

    :goto_f
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    goto :goto_12

    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_10

    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_10
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v2

    :goto_11
    shl-int/lit8 v4, v5, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result v2

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    :goto_12
    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_16

    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_13
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_15

    :pswitch_40
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_14
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_15
    add-int/2addr v1, v2

    :cond_2
    :goto_16
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;)I

    move-result p0

    add-int/2addr p0, v1

    goto :goto_17

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo(Ljava/lang/Object;)I

    move-result p0

    :goto_17
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    ushr-int/lit8 v4, v4, 0x14

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_8

    :pswitch_a
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto/16 :goto_9

    :pswitch_b
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :pswitch_d
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_b

    :pswitch_e
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :pswitch_f
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_3
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v4

    goto/16 :goto_d

    :pswitch_10
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_a

    :pswitch_11
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_c

    :pswitch_12
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_6

    :goto_4
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_b

    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_7

    :cond_0
    const/16 v4, 0x25

    :goto_7
    mul-int/lit8 v3, v3, 0x35

    goto :goto_e

    :goto_8
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_b

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(JLjava/lang/Object;)Z

    move-result v4

    :goto_9
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zza(Z)I

    move-result v4

    goto :goto_b

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    goto :goto_b

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    goto :goto_d

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(JLjava/lang/Object;)F

    move-result v4

    :goto_a
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :goto_b
    add-int/2addr v4, v3

    move v3, v4

    goto :goto_f

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(JLjava/lang/Object;)D

    move-result-wide v4

    :goto_c
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_d
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    const/16 v6, 0x20

    ushr-long v6, v4, v6

    xor-long/2addr v4, v6

    long-to-int v4, v4

    :goto_e
    add-int/2addr v3, v4

    :cond_1
    :goto_f
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->hashCode$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzgu()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 37

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzG(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    move/from16 v0, p3

    move/from16 v1, p5

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    const/16 v17, 0x0

    iget-object v8, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    if-ge v0, v13, :cond_20

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v4, v11}, Lkotlin/ExceptionsKt;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    move/from16 v35, v4

    move v4, v0

    move/from16 v0, v35

    :cond_0
    ushr-int/lit8 v10, v0, 0x3

    move/from16 v20, v1

    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzf:I

    iget v13, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zze:I

    move-object/from16 v21, v7

    const/4 v7, 0x3

    if-le v10, v2, :cond_2

    div-int/2addr v3, v7

    if-lt v10, v13, :cond_1

    if-gt v10, v1, :cond_1

    invoke-virtual {v15, v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzw(II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    move v2, v1

    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    if-lt v10, v13, :cond_3

    if-gt v10, v1, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v15, v10, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzw(II)I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    const/4 v1, -0x1

    :goto_2
    move v2, v1

    :goto_3
    const-wide/16 v22, 0x0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    move/from16 v25, v3

    move/from16 v16, v5

    move/from16 v24, v6

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move/from16 v19, v13

    move-object v14, v15

    move/from16 v7, v20

    const/16 v18, 0x1

    move v8, v0

    move/from16 v20, v10

    goto/16 :goto_10

    :cond_4
    and-int/lit8 v1, v0, 0x7

    add-int/lit8 v18, v2, 0x1

    aget v13, v8, v18

    ushr-int/lit8 v3, v13, 0x14

    and-int/lit16 v3, v3, 0xff

    move/from16 v16, v0

    const v7, 0xfffff

    and-int v0, v13, v7

    move-object/from16 v25, v8

    int-to-long v7, v0

    const/16 v0, 0x11

    move/from16 v26, v10

    if-gt v3, v0, :cond_e

    add-int/lit8 v0, v2, 0x2

    aget v0, v25, v0

    ushr-int/lit8 v27, v0, 0x14

    const/16 v28, 0x1

    shl-int v27, v28, v27

    const v10, 0xfffff

    and-int/2addr v0, v10

    if-eq v0, v5, :cond_6

    if-eq v5, v10, :cond_5

    int-to-long v10, v5

    invoke-virtual {v9, v14, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v5, v0

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v10, v0

    goto :goto_4

    :cond_6
    move v10, v5

    :goto_4
    move v11, v6

    const/4 v0, 0x5

    move-object/from16 v6, p6

    packed-switch v3, :pswitch_data_0

    move v13, v2

    const/4 v0, 0x1

    const/4 v2, 0x3

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-ne v1, v2, :cond_d

    invoke-virtual {v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzD(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    shl-int/lit8 v0, v26, 0x3

    or-int/lit8 v5, v0, 0x4

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    move-object v0, v7

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lkotlin/ExceptionsKt;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    invoke-virtual {v15, v13, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzL(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v6, v11, v27

    move/from16 v1, p5

    move-object/from16 v11, p6

    move v4, v10

    move v3, v13

    move/from16 v5, v16

    goto/16 :goto_d

    :pswitch_0
    if-nez v1, :cond_7

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v13

    iget-wide v0, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzc(J)J

    move-result-wide v4

    move/from16 v3, v16

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v16, v10

    move/from16 p3, v13

    const/16 v18, -0x1

    move v13, v2

    move v10, v3

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v11, v27

    move/from16 v1, p5

    move-object v11, v6

    move v4, v10

    move v3, v13

    move/from16 v5, v16

    move/from16 v2, v26

    move/from16 v13, p4

    move v6, v0

    move/from16 v0, p3

    goto/16 :goto_0

    :cond_7
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    goto/16 :goto_9

    :pswitch_1
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-nez v1, :cond_c

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb(I)I

    move-result v1

    goto/16 :goto_7

    :pswitch_2
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-nez v1, :cond_c

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    div-int/lit8 v2, v13, 0x3

    add-int/2addr v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-object v2, v21, v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzj(ILjava/lang/Object;)V

    move/from16 v1, p5

    move v4, v10

    move v3, v13

    move/from16 v5, v16

    move/from16 v2, v26

    move/from16 v13, p4

    move/from16 v35, v11

    move-object v11, v6

    move/from16 v6, v35

    goto/16 :goto_0

    :pswitch_3
    move v13, v2

    const/4 v0, 0x2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-ne v1, v0, :cond_c

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    :goto_5
    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    move v13, v2

    const/4 v0, 0x2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-ne v1, v0, :cond_c

    invoke-virtual {v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzD(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    move-object v0, v7

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkotlin/ExceptionsKt;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    invoke-virtual {v15, v13, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzL(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_5
    const/4 v0, 0x2

    const/16 v18, -0x1

    move/from16 v35, v13

    move v13, v2

    move/from16 v2, v35

    move/from16 v36, v16

    move/from16 v16, v10

    move/from16 v10, v36

    if-ne v1, v0, :cond_c

    const/high16 v0, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_9

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_5

    :cond_9
    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzh([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_5

    :pswitch_6
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-nez v1, :cond_c

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v1, v1, v22

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    invoke-static {v14, v7, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_a

    :pswitch_7
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-ne v1, v0, :cond_c

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-virtual {v9, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_8
    move v13, v2

    const/4 v0, 0x1

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-ne v1, v0, :cond_d

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v21

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v7

    move v7, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_a

    :pswitch_9
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-nez v1, :cond_c

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    :cond_b
    :goto_7
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_a
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-nez v1, :cond_c

    invoke-static {v12, v4, v6}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v17

    iget-wide v4, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v11, v27

    move/from16 v1, p5

    move-object v11, v6

    move v4, v10

    move v3, v13

    move/from16 v5, v16

    move/from16 v2, v26

    move/from16 v13, p4

    move v6, v0

    move/from16 v0, v17

    goto/16 :goto_0

    :pswitch_b
    move v13, v2

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-ne v1, v0, :cond_c

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v7, v8, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JF)V

    :goto_8
    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v0, 0x1

    goto :goto_b

    :pswitch_c
    move v13, v2

    const/4 v0, 0x1

    const/16 v18, -0x1

    move/from16 v35, v16

    move/from16 v16, v10

    move/from16 v10, v35

    if-ne v1, v0, :cond_d

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v7, v8, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzo(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_a
    or-int v1, v11, v27

    move-object v11, v6

    move v4, v10

    move v3, v13

    move/from16 v5, v16

    move/from16 v2, v26

    move/from16 v13, p4

    move v6, v1

    move/from16 v1, p5

    goto/16 :goto_0

    :cond_d
    :goto_b
    move/from16 v7, p5

    move-object/from16 v33, v9

    move v8, v10

    move/from16 v24, v11

    move-object v14, v15

    move-object/from16 v32, v25

    move/from16 v20, v26

    const/16 v19, 0x0

    move/from16 v25, v18

    move/from16 v18, v0

    goto/16 :goto_10

    :cond_e
    move/from16 v10, v16

    const/4 v0, 0x1

    const/16 v18, -0x1

    move/from16 v35, v13

    move v13, v2

    move/from16 v2, v35

    const/16 v11, 0x1b

    if-ne v3, v11, :cond_12

    const/4 v11, 0x2

    if-ne v1, v11, :cond_11

    invoke-virtual {v9, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zzc()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xa

    goto :goto_c

    :cond_f
    add-int/2addr v1, v1

    :goto_c
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v0

    invoke-virtual {v9, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_10
    move-object v7, v0

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    move v1, v10

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v16, v5

    move-object v5, v7

    move/from16 v24, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lkotlin/ExceptionsKt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move/from16 v1, p5

    move-object/from16 v11, p6

    move v4, v10

    move v3, v13

    move/from16 v5, v16

    move/from16 v6, v24

    :goto_d
    move/from16 v2, v26

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_11
    move/from16 v16, v5

    move/from16 v24, v6

    move v15, v4

    move-object/from16 v33, v9

    move/from16 v34, v13

    move-object/from16 v32, v25

    move/from16 v20, v26

    const/16 v19, 0x0

    move/from16 v26, v10

    move/from16 v25, v18

    move/from16 v18, v0

    goto/16 :goto_f

    :cond_12
    move/from16 v16, v5

    move/from16 v24, v6

    const/16 v5, 0x31

    if-gt v3, v5, :cond_14

    int-to-long v5, v2

    move v11, v0

    move-object/from16 v0, p0

    move v2, v1

    move-object/from16 v1, p1

    move/from16 p3, v2

    move-object/from16 v2, p2

    move/from16 v27, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v28, v5

    move v5, v10

    move/from16 v6, v26

    move-wide/from16 v30, v7

    const v8, 0xfffff

    move/from16 v7, p3

    move-object/from16 v32, v25

    move/from16 v25, v18

    move/from16 v18, v11

    move v11, v8

    move v8, v13

    move-object/from16 v33, v9

    move/from16 v20, v26

    const/16 v19, 0x0

    move/from16 v26, v10

    move-wide/from16 v9, v28

    move/from16 v11, v27

    move/from16 v34, v13

    move-wide/from16 v12, v30

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_13

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v1, p5

    move-object/from16 v11, p6

    move/from16 v5, v16

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v4, v26

    move-object/from16 v9, v33

    move/from16 v3, v34

    goto/16 :goto_0

    :cond_13
    move-object/from16 v14, p0

    move/from16 v7, p5

    move v4, v0

    :goto_e
    move/from16 v8, v26

    move/from16 v13, v34

    goto/16 :goto_10

    :cond_14
    move/from16 p3, v1

    move/from16 v27, v3

    move v15, v4

    move-wide/from16 v30, v7

    move-object/from16 v33, v9

    move/from16 v34, v13

    move-object/from16 v32, v25

    move/from16 v20, v26

    const/16 v19, 0x0

    move/from16 v26, v10

    move/from16 v25, v18

    move/from16 v18, v0

    const/16 v0, 0x32

    move/from16 v9, v27

    if-ne v9, v0, :cond_16

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_15

    :goto_f
    move-object/from16 v14, p0

    move/from16 v7, p5

    move v4, v15

    goto :goto_e

    :cond_15
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v30

    move/from16 v13, v34

    invoke-virtual {v14, v15, v13, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzq(Ljava/lang/Object;IJ)V

    throw v17

    :cond_16
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v12, v15

    move-wide/from16 v10, v30

    move/from16 v13, v34

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v2

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v26

    move/from16 v6, v20

    move v15, v12

    move v12, v13

    move/from16 v27, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_17

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v1, p5

    move-object/from16 v11, p6

    move-object v15, v14

    move/from16 v5, v16

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v4, v26

    move/from16 v3, v27

    move-object/from16 v9, v33

    move-object/from16 v14, p1

    goto/16 :goto_0

    :cond_17
    move/from16 v7, p5

    move v4, v0

    move/from16 v8, v26

    move/from16 v13, v27

    :goto_10
    if-ne v8, v7, :cond_18

    if-eqz v7, :cond_18

    move-object/from16 v11, p1

    move v0, v4

    move v1, v7

    move v4, v8

    move/from16 v5, v16

    move/from16 v6, v24

    goto/16 :goto_1b

    :cond_18
    iget-boolean v0, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    move-object/from16 v9, p6

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    if-eq v1, v0, :cond_1e

    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move/from16 v10, v20

    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v5

    move v0, v8

    move-object/from16 v1, p2

    move v2, v4

    move/from16 v3, p4

    move-object v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkotlin/ExceptionsKt;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    goto/16 :goto_1a

    :cond_19
    move-object/from16 v11, p1

    move-object v1, v11

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    if-eq v3, v5, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    packed-switch v3, :pswitch_data_1

    move-object/from16 v12, p2

    goto/16 :goto_17

    :pswitch_d
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget-wide v5, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzc(J)J

    move-result-wide v5

    goto/16 :goto_14

    :pswitch_e
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget v0, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb(I)I

    move-result v0

    goto/16 :goto_13

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    goto :goto_11

    :pswitch_11
    move-object/from16 v12, p2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V

    :cond_1a
    move-object v1, v3

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkotlin/ExceptionsKt;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto/16 :goto_1a

    :pswitch_12
    move-object/from16 v12, p2

    shl-int/lit8 v3, v10, 0x3

    or-int/lit8 v5, v3, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V

    :cond_1b
    move-object v1, v3

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lkotlin/ExceptionsKt;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto/16 :goto_1a

    :pswitch_13
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    :goto_11
    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    goto/16 :goto_18

    :pswitch_14
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget-wide v5, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v0, v5, v22

    if-eqz v0, :cond_1c

    goto :goto_12

    :cond_1c
    move/from16 v18, v19

    :goto_12
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_17

    :pswitch_15
    move-object/from16 v12, p2

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_15

    :pswitch_16
    move-object/from16 v12, p2

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_16

    :pswitch_17
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget v0, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_17

    :pswitch_18
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget-wide v5, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    :goto_14
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_17

    :pswitch_19
    move-object/from16 v12, p2

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    :goto_15
    add-int/lit8 v4, v4, 0x4

    goto :goto_17

    :pswitch_1a
    move-object/from16 v12, p2

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    :goto_16
    add-int/lit8 v4, v4, 0x8

    :goto_17
    move-object/from16 v0, v17

    :goto_18
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V

    move v0, v4

    goto :goto_1a

    :cond_1d
    move-object/from16 v12, p2

    invoke-static {v12, v4, v9}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    throw v17

    :cond_1e
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    goto :goto_19

    :cond_1f
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v9, p6

    :goto_19
    move/from16 v10, v20

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v5

    move v0, v8

    move-object/from16 v1, p2

    move v2, v4

    move/from16 v3, p4

    move-object v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lkotlin/ExceptionsKt;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    :goto_1a
    move v1, v7

    move v4, v8

    move v2, v10

    move v3, v13

    move-object v15, v14

    move/from16 v5, v16

    move/from16 v6, v24

    move/from16 v13, p4

    move-object v14, v11

    move-object v11, v9

    move-object/from16 v9, v33

    goto/16 :goto_0

    :cond_20
    move/from16 v20, v1

    move/from16 v16, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object v11, v14

    move-object v14, v15

    const/16 v18, 0x1

    :goto_1b
    const v2, 0xfffff

    if-eq v5, v2, :cond_21

    int-to-long v7, v5

    move-object/from16 v3, v33

    invoke-virtual {v3, v11, v7, v8, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    iget v3, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzk:I

    :goto_1c
    iget v5, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl:I

    if-ge v3, v5, :cond_24

    iget-object v5, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzj:[I

    aget v5, v5, v3

    aget v6, v32, v5

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v6

    and-int/2addr v6, v2

    int-to-long v6, v6

    invoke-static {v6, v7, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_22

    goto :goto_1d

    :cond_22
    div-int/lit8 v7, v5, 0x3

    add-int/2addr v7, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v21, v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    if-nez v7, :cond_23

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_23
    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v17

    :cond_24
    move/from16 v2, p4

    if-nez v1, :cond_26

    if-ne v0, v2, :cond_25

    goto :goto_1e

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_26
    if-gt v0, v2, :cond_27

    if-ne v4, v1, :cond_27

    :goto_1e
    return v0

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzV()V

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzb:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzT()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    ushr-int/lit8 v3, v3, 0x14

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v4

    const/16 v6, 0x9

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zzc()V

    invoke-virtual {v7, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    invoke-virtual {v3, v4, v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zza(JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    aget v3, v0, v1

    invoke-virtual {p0, p1, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzg(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zze(Ljava/lang/Object;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzG(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    aget v1, v1, v0

    ushr-int/lit8 v2, v2, 0x14

    and-int/lit16 v2, v2, 0xff

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzI(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb:Ljava/lang/Class;

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    invoke-virtual {v1, p1, v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzb(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzH(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzm(Ljava/lang/Object;JZ)V

    goto :goto_5

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;IJ)V

    goto :goto_5

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_4
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzr(Ljava/lang/Object;JJ)V

    goto :goto_5

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(JLjava/lang/Object;)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JF)V

    goto :goto_5

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzo(Ljava/lang/Object;JD)V

    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(ILjava/lang/Object;)V

    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzD(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzC(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    if-eqz v0, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzG(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v7, -0x1

    move/from16 v0, p3

    move v1, v7

    move v2, v10

    move v6, v2

    const v5, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_16

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lkotlin/ExceptionsKt;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    iget v0, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzf:I

    iget v8, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zze:I

    if-le v3, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    if-lt v3, v8, :cond_2

    if-gt v3, v0, :cond_2

    invoke-virtual {v15, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzw(II)I

    move-result v0

    goto :goto_2

    :cond_1
    if-lt v3, v8, :cond_2

    if-gt v3, v0, :cond_2

    invoke-virtual {v15, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzw(II)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v7

    :goto_2
    move v8, v0

    if-ne v8, v7, :cond_3

    move/from16 v20, v3

    move v2, v4

    move/from16 v25, v5

    move/from16 v18, v7

    move-object/from16 v26, v9

    move/from16 v19, v10

    move-object v15, v14

    goto/16 :goto_12

    :cond_3
    and-int/lit8 v2, v16, 0x7

    add-int/lit8 v0, v8, 0x1

    iget-object v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget v0, v1, v0

    ushr-int/lit8 v7, v0, 0x14

    and-int/lit16 v7, v7, 0xff

    const v17, 0xfffff

    and-int v10, v0, v17

    move/from16 v20, v3

    move/from16 p3, v4

    int-to-long v3, v10

    const/16 v10, 0x11

    if-gt v7, v10, :cond_c

    add-int/lit8 v10, v8, 0x2

    aget v1, v1, v10

    ushr-int/lit8 v10, v1, 0x14

    const/4 v13, 0x1

    shl-int v10, v13, v10

    const v13, 0xfffff

    and-int/2addr v1, v13

    move-wide/from16 v23, v3

    if-eq v1, v5, :cond_6

    if-eq v5, v13, :cond_4

    int-to-long v3, v5

    invoke-virtual {v9, v14, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    if-eq v1, v13, :cond_5

    int-to-long v3, v1

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v6, v3

    :cond_5
    move/from16 v17, v6

    move v6, v1

    goto :goto_3

    :cond_6
    move/from16 v17, v6

    move v6, v5

    :goto_3
    const/4 v1, 0x5

    packed-switch v7, :pswitch_data_0

    move/from16 v7, p3

    move/from16 p3, v6

    goto/16 :goto_c

    :pswitch_0
    move/from16 v4, p3

    if-nez v2, :cond_7

    invoke-static {v12, v4, v11}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v7

    iget-wide v0, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzc(J)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v2, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v17, v10

    move/from16 p3, v6

    move v6, v0

    move v0, v7

    goto/16 :goto_b

    :pswitch_1
    move/from16 v4, p3

    if-nez v2, :cond_7

    invoke-static {v12, v4, v11}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb(I)I

    move-result v1

    move-wide/from16 v2, v23

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :pswitch_2
    move/from16 v4, p3

    move-wide/from16 v0, v23

    if-nez v2, :cond_7

    invoke-static {v12, v4, v11}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto :goto_4

    :pswitch_3
    move/from16 v4, p3

    move-wide/from16 v0, v23

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    invoke-static {v12, v4, v11}, Lkotlin/ExceptionsKt;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    move/from16 p3, v6

    move-wide v5, v0

    move v0, v2

    goto :goto_5

    :pswitch_4
    move/from16 v4, p3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    invoke-virtual {v15, v8, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzD(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    move-object v0, v7

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lkotlin/ExceptionsKt;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    invoke-virtual {v15, v8, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzL(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    move/from16 p3, v6

    goto/16 :goto_a

    :cond_7
    move/from16 p3, v6

    goto :goto_7

    :pswitch_5
    move/from16 v4, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    const/4 v1, 0x2

    if-ne v2, v1, :cond_a

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    invoke-static {v12, v4, v11}, Lkotlin/ExceptionsKt;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_5

    :cond_8
    invoke-static {v12, v4, v11}, Lkotlin/ExceptionsKt;->zzh([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    :goto_5
    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    move/from16 v4, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    if-nez v2, :cond_a

    invoke-static {v12, v4, v11}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    invoke-static {v14, v5, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_a

    :cond_a
    :goto_7
    move v7, v4

    goto/16 :goto_c

    :pswitch_7
    move/from16 v4, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    if-ne v2, v1, :cond_a

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_9

    :pswitch_8
    move/from16 v4, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    const/4 v0, 0x1

    if-ne v2, v0, :cond_a

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v21

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v5

    move v7, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_8

    :pswitch_9
    move/from16 v7, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    if-nez v2, :cond_b

    invoke-static {v12, v7, v11}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move/from16 v7, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    if-nez v2, :cond_b

    invoke-static {v12, v7, v11}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v7

    iget-wide v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-wide v2, v5

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v17, v10

    move/from16 v5, p3

    move v0, v7

    goto/16 :goto_e

    :pswitch_b
    move/from16 v7, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    if-ne v2, v1, :cond_b

    invoke-static {v12, v7}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v5, v6, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JF)V

    add-int/lit8 v4, v7, 0x4

    goto :goto_9

    :pswitch_c
    move/from16 v7, p3

    move/from16 p3, v6

    move-wide/from16 v5, v23

    const/4 v0, 0x1

    if-ne v2, v0, :cond_b

    invoke-static {v12, v7}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v5, v6, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzo(Ljava/lang/Object;JD)V

    :goto_8
    add-int/lit8 v4, v7, 0x8

    :goto_9
    move v0, v4

    :goto_a
    or-int v1, v17, v10

    move v6, v1

    :goto_b
    move/from16 v5, p3

    goto :goto_e

    :cond_b
    :goto_c
    move/from16 v25, p3

    move v2, v7

    move v10, v8

    move-object/from16 v26, v9

    move-object v15, v14

    move/from16 v6, v17

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_c
    move/from16 v17, v5

    move v10, v6

    const v13, 0xfffff

    move-wide v5, v3

    move/from16 v4, p3

    const/16 v1, 0x1b

    if-ne v7, v1, :cond_10

    const/4 v1, 0x2

    if-ne v2, v1, :cond_f

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zzc()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_d

    :cond_d
    add-int/2addr v1, v1

    :goto_d
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v0

    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v5, v0

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v7, v17

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lkotlin/ExceptionsKt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move v5, v7

    move v6, v10

    :goto_e
    move/from16 v13, p4

    move v2, v8

    move/from16 v1, v20

    const/4 v7, -0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_f
    move v15, v4

    move/from16 v28, v8

    move-object/from16 v26, v9

    move/from16 v27, v10

    move/from16 v25, v17

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_f

    :cond_10
    move/from16 v3, v17

    const/16 v1, 0x31

    if-gt v7, v1, :cond_12

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 p3, v2

    move-object/from16 v2, p2

    move-wide/from16 v23, v5

    move v6, v3

    move v3, v4

    move v5, v4

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v16

    move/from16 v25, v6

    move/from16 v6, v20

    move/from16 v17, v7

    const/16 v18, -0x1

    move/from16 v7, p3

    move v13, v8

    move-object/from16 v26, v9

    move/from16 v27, v10

    const/16 v19, 0x0

    move-wide/from16 v9, v21

    move/from16 v11, v17

    move/from16 v28, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_11

    move-object/from16 v15, p1

    move/from16 v17, v28

    goto/16 :goto_10

    :cond_11
    move-object/from16 v15, p1

    move v4, v0

    move/from16 v17, v28

    goto/16 :goto_11

    :cond_12
    move/from16 p3, v2

    move/from16 v25, v3

    move v15, v4

    move-wide/from16 v23, v5

    move/from16 v17, v7

    move/from16 v28, v8

    move-object/from16 v26, v9

    move/from16 v27, v10

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v1, 0x32

    move/from16 v9, v17

    if-ne v9, v1, :cond_14

    move/from16 v7, p3

    const/4 v1, 0x2

    if-eq v7, v1, :cond_13

    :goto_f
    move v4, v15

    move/from16 v17, v28

    move-object/from16 v15, p1

    goto :goto_11

    :cond_13
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v23

    move/from16 v13, v28

    invoke-virtual {v14, v15, v13, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzq(Ljava/lang/Object;IJ)V

    const/4 v0, 0x0

    throw v0

    :cond_14
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v8, v0

    move v12, v15

    move-wide/from16 v10, v23

    move/from16 v13, v28

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v20

    move v14, v12

    move v12, v13

    move/from16 v17, v13

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v14, :cond_15

    :goto_10
    move/from16 v2, v17

    move/from16 v5, v25

    move/from16 v6, v27

    goto :goto_13

    :cond_15
    move v4, v0

    :goto_11
    move v2, v4

    move/from16 v10, v17

    move/from16 v6, v27

    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lkotlin/ExceptionsKt;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move v2, v10

    move/from16 v5, v25

    :goto_13
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v7, v18

    move/from16 v10, v19

    move/from16 v1, v20

    move-object/from16 v9, v26

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_16
    move/from16 v27, v6

    move-object/from16 v26, v9

    move-object v15, v14

    const v1, 0xfffff

    if-eq v5, v1, :cond_17

    int-to-long v1, v5

    move-object/from16 v3, v26

    move/from16 v6, v27

    invoke-virtual {v3, v15, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_17
    move/from16 v4, p4

    if-ne v0, v4, :cond_18

    return-void

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_19
    move v4, v13

    move-object v15, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    iget-boolean v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    const v10, 0xfffff

    if-eqz v6, :cond_7

    if-eqz v7, :cond_0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v6

    iget-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {v7}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzf()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v6, v3

    move-object v7, v6

    :goto_0
    array-length v11, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_5

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v13

    aget v14, v9, v12

    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zza(Ljava/util/Map$Entry;)I

    move-result v15

    if-gt v15, v14, :cond_2

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Ljava/util/Map$Entry;)V

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v7, v3

    goto :goto_2

    :cond_2
    ushr-int/lit8 v15, v13, 0x14

    and-int/lit16 v15, v15, 0xff

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_23

    :pswitch_0
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_4

    and-int/2addr v13, v10

    int-to-long v4, v13

    goto/16 :goto_11

    :pswitch_1
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v4

    goto/16 :goto_12

    :pswitch_2
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_13

    :pswitch_3
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v4

    goto/16 :goto_14

    :pswitch_4
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_15

    :pswitch_5
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_16

    :pswitch_6
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_17

    :pswitch_7
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_18

    :pswitch_8
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_19

    :pswitch_9
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_1a

    :pswitch_a
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto/16 :goto_1b

    :pswitch_b
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_c
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v4

    goto/16 :goto_1d

    :pswitch_d
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1e

    :pswitch_e
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v4

    goto/16 :goto_1f

    :pswitch_f
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v4

    goto/16 :goto_20

    :pswitch_10
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto/16 :goto_21

    :pswitch_11
    invoke-virtual {v0, v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto/16 :goto_22

    :pswitch_12
    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_23

    :cond_3
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v3

    :pswitch_13
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    invoke-static {v4, v5, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_23

    :pswitch_14
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v13, 0x1

    goto :goto_3

    :pswitch_15
    aget v4, v9, v12

    const/4 v5, 0x1

    goto :goto_4

    :pswitch_16
    aget v4, v9, v12

    const/4 v5, 0x1

    goto :goto_5

    :pswitch_17
    aget v4, v9, v12

    const/4 v5, 0x1

    goto :goto_6

    :pswitch_18
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_7

    :pswitch_19
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_8

    :pswitch_1a
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v13, 0x1

    goto/16 :goto_9

    :pswitch_1b
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_a

    :pswitch_1c
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_b

    :pswitch_1d
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_c

    :pswitch_1e
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_d

    :pswitch_1f
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_e

    :pswitch_20
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_f

    :pswitch_21
    aget v4, v9, v12

    const/4 v5, 0x1

    goto/16 :goto_10

    :pswitch_22
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v13, 0x0

    :goto_3
    invoke-static {v4, v5, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_23
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_4
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_24
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_5
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_25
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_6
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_26
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_7
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_27
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_8
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_28
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    goto/16 :goto_23

    :pswitch_29
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    invoke-static {v4, v5, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_23

    :pswitch_2a
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    goto/16 :goto_23

    :pswitch_2b
    aget v4, v9, v12

    and-int v5, v13, v10

    int-to-long v13, v5

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v13, 0x0

    :goto_9
    invoke-static {v4, v5, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_2c
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_a
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_2d
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_b
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_2e
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_c
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_2f
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_d
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_30
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_e
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_31
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_f
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_32
    aget v4, v9, v12

    const/4 v5, 0x0

    :goto_10
    and-int/2addr v13, v10

    int-to-long v13, v13

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v4, v13, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_23

    :pswitch_33
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    :goto_11
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    invoke-virtual {v2, v14, v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzq(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_34
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_12
    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(IJ)V

    goto/16 :goto_23

    :pswitch_35
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    :goto_13
    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(II)V

    goto/16 :goto_23

    :pswitch_36
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_14
    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzz(IJ)V

    goto/16 :goto_23

    :pswitch_37
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    :goto_15
    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzx(II)V

    goto/16 :goto_23

    :pswitch_38
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    :goto_16
    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzi(II)V

    goto/16 :goto_23

    :pswitch_39
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    :goto_17
    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzI(II)V

    goto/16 :goto_23

    :pswitch_3a
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_18
    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_23

    :pswitch_3b
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_19
    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    invoke-virtual {v2, v14, v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzv(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_3c
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1a
    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    goto/16 :goto_23

    :pswitch_3d
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(JLjava/lang/Object;)Z

    move-result v4

    :goto_1b
    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzb(IZ)V

    goto/16 :goto_23

    :pswitch_3e
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    :goto_1c
    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(II)V

    goto :goto_23

    :pswitch_3f
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_1d
    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzm(IJ)V

    goto :goto_23

    :pswitch_40
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    :goto_1e
    invoke-virtual {v2, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    goto :goto_23

    :pswitch_41
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_1f
    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzK(IJ)V

    goto :goto_23

    :pswitch_42
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_20
    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(IJ)V

    goto :goto_23

    :pswitch_43
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(JLjava/lang/Object;)F

    move-result v4

    :goto_21
    invoke-virtual {v2, v4, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzo(FI)V

    goto :goto_23

    :pswitch_44
    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    and-int v4, v13, v10

    int-to-long v4, v4

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(JLjava/lang/Object;)D

    move-result-wide v4

    :goto_22
    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(ID)V

    :cond_4
    :goto_23
    add-int/lit8 v12, v12, 0x3

    goto/16 :goto_1

    :cond_5
    :goto_24
    if-eqz v7, :cond_12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Ljava/util/Map$Entry;)V

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_24

    :cond_6
    move-object v7, v3

    goto :goto_24

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzf()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_8
    move-object v4, v3

    move-object v5, v4

    :goto_25
    array-length v6, v9

    move v12, v10

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_26
    if-ge v11, v6, :cond_10

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v13

    aget v14, v9, v11

    ushr-int/lit8 v15, v13, 0x14

    and-int/lit16 v15, v15, 0xff

    const/16 v3, 0x11

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    if-gt v15, v3, :cond_a

    add-int/lit8 v3, v11, 0x2

    aget v3, v9, v3

    move-object/from16 v18, v5

    const v17, 0xfffff

    and-int v5, v3, v17

    move/from16 v19, v6

    if-eq v5, v12, :cond_9

    int-to-long v6, v5

    invoke-virtual {v10, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v12, v5

    :cond_9
    ushr-int/lit8 v3, v3, 0x14

    const/4 v5, 0x1

    shl-int v3, v5, v3

    move v5, v15

    move-object/from16 v6, v18

    goto :goto_27

    :cond_a
    move-object/from16 v18, v5

    move/from16 v19, v6

    move v5, v15

    move-object/from16 v6, v18

    const/4 v3, 0x0

    :goto_27
    if-eqz v6, :cond_c

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zza(Ljava/util/Map$Entry;)I

    move-result v15

    if-gt v15, v14, :cond_c

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Ljava/util/Map$Entry;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_27

    :cond_b
    const/4 v6, 0x0

    goto :goto_27

    :cond_c
    const v15, 0xfffff

    and-int/2addr v13, v15

    move/from16 v17, v12

    int-to-long v12, v13

    packed-switch v5, :pswitch_data_1

    :cond_d
    :goto_28
    const/4 v5, 0x0

    const/16 v16, 0x1

    goto/16 :goto_2c

    :pswitch_45
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    invoke-virtual {v2, v14, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzq(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)V

    goto :goto_28

    :pswitch_46
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(IJ)V

    goto :goto_28

    :pswitch_47
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(II)V

    goto :goto_28

    :pswitch_48
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzz(IJ)V

    goto :goto_28

    :pswitch_49
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzx(II)V

    goto :goto_28

    :pswitch_4a
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzi(II)V

    goto :goto_28

    :pswitch_4b
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzI(II)V

    goto :goto_28

    :pswitch_4c
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto :goto_28

    :pswitch_4d
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    invoke-virtual {v2, v14, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzv(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)V

    goto/16 :goto_28

    :pswitch_4e
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    goto/16 :goto_28

    :pswitch_4f
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzb(IZ)V

    goto/16 :goto_28

    :pswitch_50
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(II)V

    goto/16 :goto_28

    :pswitch_51
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzm(IJ)V

    goto/16 :goto_28

    :pswitch_52
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    goto/16 :goto_28

    :pswitch_53
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzK(IJ)V

    goto/16 :goto_28

    :pswitch_54
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(IJ)V

    goto/16 :goto_28

    :pswitch_55
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzo(FI)V

    goto/16 :goto_28

    :pswitch_56
    invoke-virtual {v0, v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(ID)V

    goto/16 :goto_28

    :pswitch_57
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_28

    :cond_e
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 v5, 0x0

    throw v5

    :pswitch_58
    const/4 v5, 0x0

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v12

    invoke-static {v3, v10, v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_28

    :pswitch_59
    const/4 v5, 0x0

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v14, 0x1

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_5a
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_5b
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_5c
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_5d
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_5e
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_5f
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_60
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_61
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_62
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_63
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_64
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_65
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_66
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto/16 :goto_2a

    :pswitch_67
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v3, v10, v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    move v5, v12

    goto/16 :goto_2b

    :pswitch_68
    const/4 v3, 0x0

    const/4 v14, 0x1

    aget v5, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_29

    :pswitch_69
    const/4 v3, 0x0

    const/4 v14, 0x1

    aget v5, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_29

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v14, 0x1

    aget v5, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_29

    :pswitch_6b
    const/4 v3, 0x0

    const/4 v14, 0x1

    aget v5, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_29

    :pswitch_6c
    const/4 v3, 0x0

    const/4 v14, 0x1

    aget v5, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    :goto_29
    move v5, v3

    goto/16 :goto_2b

    :pswitch_6d
    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    goto :goto_2a

    :pswitch_6e
    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v10

    invoke-static {v3, v5, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto :goto_2a

    :pswitch_6f
    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    :goto_2a
    move/from16 v16, v14

    const/4 v5, 0x0

    goto/16 :goto_2c

    :pswitch_70
    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v3, v5, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    move v5, v10

    goto :goto_2b

    :pswitch_71
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_2b

    :pswitch_72
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_2b

    :pswitch_73
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_2b

    :pswitch_74
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_2b

    :pswitch_75
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_2b

    :pswitch_76
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    goto :goto_2b

    :pswitch_77
    const/4 v5, 0x0

    const/4 v14, 0x1

    aget v3, v9, v11

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v3, v10, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Z)V

    :goto_2b
    move/from16 v16, v14

    goto/16 :goto_2c

    :pswitch_78
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v10

    invoke-virtual {v2, v14, v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzq(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)V

    goto/16 :goto_2c

    :pswitch_79
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzD(IJ)V

    goto/16 :goto_2c

    :pswitch_7a
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzB(II)V

    goto/16 :goto_2c

    :pswitch_7b
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzz(IJ)V

    goto/16 :goto_2c

    :pswitch_7c
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzx(II)V

    goto/16 :goto_2c

    :pswitch_7d
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzi(II)V

    goto/16 :goto_2c

    :pswitch_7e
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzI(II)V

    goto/16 :goto_2c

    :pswitch_7f
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_2c

    :pswitch_80
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v10

    invoke-virtual {v2, v14, v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzv(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)V

    goto/16 :goto_2c

    :pswitch_81
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    goto/16 :goto_2c

    :pswitch_82
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(JLjava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzb(IZ)V

    goto :goto_2c

    :pswitch_83
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzk(II)V

    goto :goto_2c

    :pswitch_84
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzm(IJ)V

    goto :goto_2c

    :pswitch_85
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzr(II)V

    goto :goto_2c

    :pswitch_86
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzK(IJ)V

    goto :goto_2c

    :pswitch_87
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzt(IJ)V

    goto :goto_2c

    :pswitch_88
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(JLjava/lang/Object;)F

    move-result v3

    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzo(FI)V

    goto :goto_2c

    :pswitch_89
    const/4 v5, 0x0

    const/16 v16, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    invoke-static {v12, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(JLjava/lang/Object;)D

    move-result-wide v12

    invoke-virtual {v2, v14, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzf(ID)V

    :cond_f
    :goto_2c
    add-int/lit8 v11, v11, 0x3

    move-object v5, v6

    move v10, v15

    move/from16 v12, v17

    move/from16 v6, v19

    const/4 v3, 0x0

    goto/16 :goto_26

    :cond_10
    move-object/from16 v18, v5

    :goto_2d
    if-eqz v5, :cond_12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;Ljava/util/Map$Entry;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_11
    const/4 v5, 0x0

    goto :goto_2d

    :cond_12
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzj(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    ushr-int/lit8 v4, v4, 0x14

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v8

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(JLjava/lang/Object;)Z

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(JLjava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(JLjava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_2

    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(JLjava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzk:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzj:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v1, :cond_0

    int-to-long v3, v10

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v11, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_5

    if-ne v3, v1, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v0

    :goto_1
    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    ushr-int/lit8 v10, v9, 0x14

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_9

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_8

    const/16 v6, 0x44

    if-eq v10, v6, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6

    goto/16 :goto_5

    :cond_6
    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    invoke-virtual {p0, p1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzk(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v0

    :cond_9
    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    move v7, v0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzk(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    return v0

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    if-ne v3, v1, :cond_c

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_c
    and-int/2addr v7, v4

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    move v6, v0

    :goto_4
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    and-int v6, v9, v1

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzk(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v0

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzk()Z

    move-result p0

    if-nez p0, :cond_10

    return v0

    :cond_10
    return v6
.end method

.method public final zzo(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0xfffff

    move v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v9, v8

    if-ge v4, v9, :cond_5

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v9

    aget v10, v8, v4

    ushr-int/lit8 v11, v9, 0x14

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    const/16 v13, 0x11

    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    if-gt v11, v13, :cond_1

    add-int/lit8 v13, v4, 0x2

    aget v8, v8, v13

    and-int v13, v8, v2

    ushr-int/lit8 v8, v8, 0x14

    if-eq v13, v6, :cond_0

    int-to-long v6, v13

    invoke-virtual {v14, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v6, v13

    :cond_0
    shl-int v8, v12, v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    and-int/2addr v9, v2

    int-to-long v2, v9

    const/16 v9, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    add-long v10, v2, v2

    shr-long/2addr v2, v9

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v8

    xor-long/2addr v2, v10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result v2

    goto/16 :goto_e

    :pswitch_2
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_b

    :pswitch_3
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    goto :goto_4

    :pswitch_7
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :pswitch_8
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_c

    :pswitch_9
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v3, :cond_2

    :goto_2
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v3, v10, 0x3

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    goto/16 :goto_e

    :cond_2
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzx(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :pswitch_a
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_f

    :pswitch_b
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_6

    :pswitch_c
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_7

    :pswitch_d
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzu(I)I

    move-result v2

    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    goto/16 :goto_9

    :pswitch_e
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_5

    :pswitch_f
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_5
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(JLjava/lang/Object;)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result v2

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    goto/16 :goto_9

    :pswitch_10
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_6
    goto/16 :goto_14

    :pswitch_11
    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_7
    goto/16 :goto_15

    :pswitch_12
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_13
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_14
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzs(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_15
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzq(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_16
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_17
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzd(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzv(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_1a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1b
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1d
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzk(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1e
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzx(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1f
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzm(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_20
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_21
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    :goto_8
    shl-int/lit8 v3, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v8

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    add-int/2addr v3, v8

    :goto_9
    add-int/2addr v3, v2

    add-int/2addr v3, v5

    move v5, v3

    goto/16 :goto_17

    :pswitch_22
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzr(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_23
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzp(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_24
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzc(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_25
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzu(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_26
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_27
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_28
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzt(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_29
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzj(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2b
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzw(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzl(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2d
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2e
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2f
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzt(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_30
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    add-long v10, v2, v2

    shr-long/2addr v2, v9

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v8

    xor-long/2addr v2, v10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result v2

    goto/16 :goto_e

    :pswitch_31
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_b
    shl-int/lit8 v3, v10, 0x3

    add-int v8, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    xor-int/2addr v2, v8

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/2addr v2, v3

    goto/16 :goto_16

    :pswitch_32
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto/16 :goto_15

    :pswitch_33
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto/16 :goto_14

    :pswitch_34
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    goto/16 :goto_10

    :pswitch_35
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    goto :goto_11

    :pswitch_36
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_d

    :pswitch_37
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-static {v10, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzn(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_38
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v3, :cond_3

    :goto_d
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v3, v10, 0x3

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    :goto_e
    add-int/2addr v2, v8

    goto :goto_16

    :cond_3
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzx(Ljava/lang/String;)I

    move-result v2

    goto :goto_11

    :pswitch_39
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_f
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/2addr v2, v12

    goto :goto_16

    :pswitch_3a
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto :goto_14

    :pswitch_3b
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto :goto_15

    :pswitch_3c
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_10
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzu(I)I

    move-result v2

    :goto_11
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    goto :goto_13

    :pswitch_3d
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    goto :goto_12

    :pswitch_3e
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_12
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result v2

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v3

    :goto_13
    add-int/2addr v3, v2

    add-int/2addr v5, v3

    goto :goto_17

    :pswitch_3f
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_14
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_16

    :pswitch_40
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_15
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_16
    add-int/2addr v5, v2

    :cond_4
    :goto_17
    add-int/lit8 v4, v4, 0x3

    const v2, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;)I

    move-result v2

    add-int/2addr v2, v5

    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_18
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb()I

    move-result v1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    if-ge v3, v1, :cond_6

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v15, v1

    goto :goto_19

    :cond_7
    add-int/2addr v2, v15

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzq(Ljava/lang/Object;IJ)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, p3, p4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    invoke-virtual {p2, p1, p3, p4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    add-int/lit8 v11, v10, 0x2

    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget v11, v12, v11

    const v12, 0xfffff

    and-int/2addr v11, v12

    int-to-long v11, v11

    const/4 v13, 0x3

    const/4 v14, 0x1

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    if-ne v3, v13, :cond_6

    invoke-virtual {v0, v1, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lkotlin/ExceptionsKt;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzc(J)J

    move-result-wide v2

    goto/16 :goto_6

    :pswitch_2
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb(I)I

    move-result v2

    goto/16 :goto_5

    :pswitch_3
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    div-int/lit8 v5, v10, 0x3

    add-int/2addr v5, v5

    add-int/2addr v5, v14

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzj(ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_4
    const/4 v2, 0x2

    if-ne v3, v2, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_5
    const/4 v2, 0x2

    if-ne v3, v2, :cond_6

    invoke-virtual {v0, v1, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lkotlin/ExceptionsKt;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v9, v11, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzM(Ljava/lang/Object;ILjava/lang/Object;I)V

    return v2

    :pswitch_6
    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v15, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_4

    add-int v3, v0, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzh(II[B)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v15, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_3
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v0

    goto/16 :goto_c

    :pswitch_7
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_7

    :pswitch_8
    const/4 v0, 0x5

    if-ne v3, v0, :cond_6

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_9
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9

    :pswitch_a
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7

    :pswitch_b
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    :goto_6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_7
    invoke-virtual {v15, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_c
    const/4 v0, 0x5

    if-ne v3, v0, :cond_6

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_8
    invoke-virtual {v15, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_a

    :pswitch_d
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_9
    invoke-virtual {v15, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    :goto_a
    invoke-virtual {v15, v1, v11, v12, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :cond_6
    :goto_b
    move v3, v5

    :goto_c
    return v3

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move-wide/from16 v10, p12

    move-object/from16 v7, p14

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zzc()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v14, v14

    :goto_0
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v13

    invoke-virtual {v12, v1, v10, v11, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x2

    packed-switch p11, :pswitch_data_0

    if-ne v6, v10, :cond_42

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lkotlin/ExceptionsKt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    goto/16 :goto_15

    :pswitch_0
    if-ne v6, v15, :cond_4

    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_3

    if-ne v0, v1, :cond_2

    goto/16 :goto_18

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    throw v14

    :cond_4
    if-eqz v6, :cond_5

    goto/16 :goto_17

    :cond_5
    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    throw v14

    :pswitch_1
    if-ne v6, v15, :cond_8

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_6

    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    goto :goto_1

    :cond_6
    if-ne v0, v1, :cond_7

    goto/16 :goto_18

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_8
    if-nez v6, :cond_42

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    :goto_2
    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlt;->zzb(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    if-ge v0, v5, :cond_a

    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v3, v1, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_2

    :cond_a
    :goto_3
    return v0

    :pswitch_2
    if-ne v6, v15, :cond_b

    invoke-static {v3, v4, v13, v7}, Lkotlin/ExceptionsKt;->zzf([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    goto :goto_4

    :cond_b
    if-nez v6, :cond_42

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lkotlin/ExceptionsKt;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    :goto_4
    div-int/lit8 v3, v9, 0x3

    add-int/2addr v3, v3

    add-int/2addr v3, v11

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    aget-object v3, v4, v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb:Ljava/lang/Class;

    if-eqz v3, :cond_11

    instance-of v4, v13, Ljava/util/RandomAccess;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    if-eqz v4, :cond_f

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_5
    if-ge v5, v4, :cond_e

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eq v5, v6, :cond_c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    invoke-static {v1, v8, v7, v14, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzB(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    if-eq v6, v4, :cond_11

    invoke-interface {v13, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v2

    :cond_f
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v1, v8, v5, v14, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzB(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_11
    move v0, v2

    goto/16 :goto_18

    :pswitch_3
    if-ne v6, v15, :cond_42

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v1, :cond_18

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_17

    if-nez v1, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzr(II[B)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    :goto_8
    if-ge v0, v5, :cond_16

    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_13

    goto :goto_a

    :cond_13
    invoke-static {v3, v1, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v1, :cond_15

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_14

    if-nez v1, :cond_12

    :goto_9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_16
    :goto_a
    return v0

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :pswitch_4
    if-ne v6, v15, :cond_42

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v13

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lkotlin/ExceptionsKt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v15, :cond_42

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    const-string v1, ""

    if-nez v0, :cond_1d

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_1c

    if-nez v4, :cond_19

    goto :goto_d

    :cond_19
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_b
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v4

    :goto_c
    if-ge v0, v5, :cond_43

    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ne v2, v6, :cond_43

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_1b

    if-nez v4, :cond_1a

    :goto_d
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_b

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_24

    if-nez v4, :cond_1e

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_e

    :cond_1e
    add-int v6, v0, v4

    invoke-static {v0, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzh(II[B)Z

    move-result v8

    if-eqz v8, :cond_23

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    if-ge v6, v5, :cond_22

    invoke-static {v3, v6, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ne v2, v4, :cond_22

    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v6

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v0, :cond_21

    if-nez v0, :cond_1f

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1f
    add-int v4, v6, v0

    invoke-static {v6, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzh(II[B)Z

    move-result v8

    if-eqz v8, :cond_20

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_e

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_22
    move v0, v6

    goto/16 :goto_18

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v6, v15, :cond_27

    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_26

    if-ne v0, v1, :cond_25

    goto/16 :goto_18

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_26
    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    throw v14

    :cond_27
    if-eqz v6, :cond_28

    goto/16 :goto_17

    :cond_28
    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    throw v14

    :pswitch_7
    if-ne v6, v15, :cond_2b

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_f
    if-ge v0, v1, :cond_29

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_f

    :cond_29
    if-ne v0, v1, :cond_2a

    goto/16 :goto_18

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_2b
    if-ne v6, v12, :cond_42

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_10
    if-ge v0, v5, :cond_2d

    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_2c

    goto :goto_11

    :cond_2c
    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_10

    :cond_2d
    :goto_11
    return v0

    :pswitch_8
    if-ne v6, v15, :cond_30

    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2f

    if-ne v0, v1, :cond_2e

    goto/16 :goto_18

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_2f
    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->zzq([BI)J

    throw v14

    :cond_30
    if-eq v6, v11, :cond_31

    goto/16 :goto_17

    :cond_31
    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzq([BI)J

    throw v14

    :pswitch_9
    if-ne v6, v15, :cond_32

    invoke-static {v3, v4, v13, v7}, Lkotlin/ExceptionsKt;->zzf([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto/16 :goto_18

    :cond_32
    if-nez v6, :cond_42

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v13

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lkotlin/ExceptionsKt;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    return v0

    :pswitch_a
    if-ne v6, v15, :cond_35

    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_34

    if-ne v0, v1, :cond_33

    goto/16 :goto_18

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_34
    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    throw v14

    :cond_35
    if-eqz v6, :cond_36

    goto/16 :goto_17

    :cond_36
    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    throw v14

    :pswitch_b
    if-ne v6, v15, :cond_39

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_12
    if-ge v0, v1, :cond_37

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_12

    :cond_37
    if-ne v0, v1, :cond_38

    goto/16 :goto_18

    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_39
    if-ne v6, v12, :cond_42

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_13
    if-ge v0, v5, :cond_3b

    invoke-static {v3, v0, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_3a

    goto :goto_14

    :cond_3a
    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_13

    :cond_3b
    :goto_14
    return v0

    :pswitch_c
    if-ne v6, v15, :cond_3e

    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_3d

    if-ne v0, v1, :cond_3c

    goto :goto_18

    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_3d
    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v14

    :cond_3e
    if-eq v6, v11, :cond_3f

    goto :goto_17

    :cond_3f
    invoke-static {v13}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;)V

    invoke-static/range {p2 .. p3}, Lkotlin/ExceptionsKt;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v14

    :goto_15
    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_41

    invoke-static {v3, v4, v7}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v8, :cond_40

    goto :goto_16

    :cond_40
    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lkotlin/ExceptionsKt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    goto :goto_15

    :cond_41
    :goto_16
    return v4

    :cond_42
    :goto_17
    move v0, v4

    :cond_43
    :goto_18
    return v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzw(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final zzy(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget p0, p0, p1

    return p0
.end method
