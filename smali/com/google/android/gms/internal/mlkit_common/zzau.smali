.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic $r8$classId:I

.field public transient zza:Ljava/util/AbstractCollection;

.field public transient zzb:Ljava/util/AbstractCollection;

.field public transient zzc:Ljava/util/AbstractCollection;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzan;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza()Lcom/google/android/gms/internal/mlkit_common/zzbb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcg;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    :cond_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzaz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    :cond_1
    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-ne p0, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    :goto_2
    if-ne p0, p1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzau;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    move-object p2, p0

    :cond_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcg;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzaz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    return v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:Ljava/util/AbstractCollection;

    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    goto :goto_5

    :cond_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcg;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Ljava/util/AbstractCollection;

    :cond_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zze()Lcom/google/android/gms/internal/mlkit_common/zzba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Ljava/util/AbstractCollection;

    :cond_1
    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zze()Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzb:Ljava/util/AbstractCollection;

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    const-string v1, "size cannot be negative but was: "

    const-string v2, ", "

    const/4 v3, 0x0

    const/16 v4, 0x3d

    const/16 v5, 0x7d

    const/4 v6, 0x1

    const/16 v7, 0x7b

    const-wide/32 v8, 0x40000000

    const-wide/16 v10, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "size"

    invoke-static {v0, v1}, Lokio/SegmentPool;->zza(ILjava/lang/String;)V

    int-to-long v0, v0

    mul-long/2addr v0, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v6, :cond_0

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v6, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-ltz v0, :cond_4

    int-to-long v0, v0

    mul-long/2addr v0, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v6, :cond_2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v6, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-ltz v0, :cond_7

    int-to-long v0, v0

    mul-long/2addr v0, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v6, :cond_5

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v6, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzby;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    :cond_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzan;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza()Lcom/google/android/gms/internal/mlkit_common/zzbb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    :cond_1
    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzau;->zzc:Ljava/util/AbstractCollection;

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract zza()Lcom/google/android/gms/internal/mlkit_common/zzbb;
.end method

.method public abstract zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;
.end method

.method public abstract zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzy;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_common/zzaz;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzw;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/mlkit_common/zzba;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/mlkit_vision_common/zzx;
.end method
