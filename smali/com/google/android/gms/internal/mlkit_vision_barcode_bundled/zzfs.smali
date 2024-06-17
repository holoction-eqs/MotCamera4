.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

.field public final zzc:Z

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zze:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    move v2, v1

    :goto_0
    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    if-ge v2, v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    aget v4, v4, v2

    ushr-int/lit8 v4, v4, 0x3

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v6

    add-int/2addr v6, v5

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v4

    const/16 v7, 0x8

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v7

    add-int/2addr v7, v7

    add-int/2addr v5, v4

    add-int/2addr v5, v7

    const/16 v4, 0x18

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v4

    add-int/2addr v4, v6

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zze:I

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move p1, v3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzo(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzo(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2

    :cond_3
    add-int/2addr v1, p1

    :cond_4
    return v1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->hashCode$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzgu()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;->zzg(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zze(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzD(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzC(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    :cond_0
    move-object v10, v2

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v11

    move/from16 v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v8, :cond_a

    invoke-static {v7, v1, v9}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    const/4 v4, 0x2

    const/16 v5, 0xb

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    iget-object v14, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    if-eq v1, v5, :cond_3

    and-int/lit8 v5, v1, 0x7

    if-ne v5, v4, :cond_2

    ushr-int/lit8 v2, v1, 0x3

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v13

    if-eqz v13, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    iget-object v2, v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    invoke-static {v1, v7, v3, v8, v9}, Lkotlin/ExceptionsKt;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget-object v2, v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v3, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lkotlin/ExceptionsKt;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    :goto_1
    move-object v2, v13

    goto :goto_0

    :cond_2
    invoke-static {v1, v7, v3, v8, v9}, Lkotlin/ExceptionsKt;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v3, v8, :cond_8

    invoke-static {v7, v3, v9}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget v15, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    ushr-int/lit8 v12, v15, 0x3

    and-int/lit8 v0, v15, 0x7

    if-eq v12, v4, :cond_6

    const/4 v4, 0x3

    if-eq v12, v4, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    iget-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    invoke-static {v0, v7, v3, v8, v9}, Lkotlin/ExceptionsKt;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v4, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    invoke-virtual {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    invoke-static {v7, v3, v9}, Lkotlin/ExceptionsKt;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v3, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    invoke-static {v7, v3, v9}, Lkotlin/ExceptionsKt;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v2

    :goto_3
    move v3, v0

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v0, 0xc

    if-eq v15, v0, :cond_8

    invoke-static {v15, v7, v3, v8, v9}, Lkotlin/ExceptionsKt;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_3

    :goto_5
    const/4 v4, 0x2

    move-object/from16 v0, p0

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    shl-int/lit8 v0, v1, 0x3

    const/4 v1, 0x2

    or-int/2addr v0, v1

    invoke-virtual {v10, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzj(ILjava/lang/Object;)V

    :cond_9
    move-object/from16 v0, p0

    move v1, v3

    goto/16 :goto_0

    :cond_a
    if-ne v1, v8, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzf()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    if-ne v3, v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzw(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found invalid MessageSet item."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zzw(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzc:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzk()Z

    move-result p0

    return p0
.end method
