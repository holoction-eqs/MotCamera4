.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

.field public zzc:Z

.field public zzd:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result p0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    if-ne v0, v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    add-int/2addr p0, p0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p1, 0x3f

    shr-long/2addr v0, p1

    xor-long/2addr v0, v2

    goto/16 :goto_5

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int v0, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    goto :goto_0

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzs;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzs;->zzmK:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzs;

    if-eq p1, v0, :cond_1

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzs;->zzmN:I

    goto :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result p1

    goto/16 :goto_8

    :pswitch_4
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, [B

    array-length p1, p1

    goto :goto_2

    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzE()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v0

    goto :goto_3

    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzE()I

    move-result p1

    goto :goto_8

    :pswitch_7
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v0, :cond_3

    :goto_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p1

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v0

    :goto_3
    add-int/2addr p1, v0

    goto :goto_8

    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzx(Ljava/lang/String;)I

    move-result p1

    goto :goto_8

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 p1, 0x1

    goto :goto_8

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_6

    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto :goto_7

    :cond_4
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzu(I)I

    move-result p1

    goto :goto_8

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzz(J)I

    move-result p1

    goto :goto_8

    :pswitch_d
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    :goto_6
    const/4 p1, 0x4

    goto :goto_8

    :pswitch_e
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    :goto_7
    const/16 p1, 0x8

    :goto_8
    add-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static zzn(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;->zzac()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final zzo(Ljava/util/Map$Entry;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzE()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2

    add-int/2addr v2, v2

    add-int/2addr v1, p0

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1

    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->equals$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzgu(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->hashCode$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzgu()I

    move-result p0

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzd:Z

    iput-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzd:Z

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->get$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzgu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzd:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzck;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->entrySet$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzgu()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzck;-><init>(Ljava/util/Iterator;I)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->entrySet$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzgu()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzc:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzT()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Z

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    iget-boolean v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Ljava/util/Map;

    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_4
    iput-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzf:Ljava/util/Map;

    iput-boolean v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Z

    :cond_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzc:Z

    :cond_7
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    if-eqz v1, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    if-eqz v1, :cond_1

    goto :goto_1

    :pswitch_2
    instance-of v1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-nez v1, :cond_0

    instance-of v1, p2, [B

    if-eqz v1, :cond_1

    goto :goto_1

    :pswitch_3
    instance-of v1, p2, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v1, p2, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v1, p2, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v1, p2, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v1, p2, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v1, p2, Ljava/lang/Integer;

    :goto_0
    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final zzk()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzn(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzn(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final zzm(Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhp;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    :goto_0
    invoke-virtual {v3, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method
