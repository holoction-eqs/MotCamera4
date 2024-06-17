.class public Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/util/Iterator;

.field public zzb:Ljava/lang/Object;

.field public final synthetic zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzc:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;->zza:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzc:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;Ljava/util/ListIterator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->$r8$classId:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzc:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzc:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;)V

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, "no calls to next() since the last call to remove()"

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzc:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    iget-object v0, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    iget-object p0, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzc()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/Map$Entry;

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;

    iget-object v2, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzc:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
