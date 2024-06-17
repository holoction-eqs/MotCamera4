.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/util/AbstractMap;

.field public zzb:I

.field public zzc:Z

.field public zzd:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Ljava/util/AbstractMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Ljava/util/AbstractMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;I)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->$r8$classId:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V

    return-void
.end method


# virtual methods
.method public final getOverflowIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Ljava/util/AbstractMap;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:Ljava/util/Iterator;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Ljava/util/AbstractMap;

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    add-int/2addr v0, v3

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    iget-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    add-int/2addr v0, v3

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Ljava/util/AbstractMap;

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:Z

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:Ljava/util/List;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:Z

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_2
    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Ljava/util/AbstractMap;

    const/4 v2, 0x0

    const-string v3, "remove() was called before next()"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:Z

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzn()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzl(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:Z

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    sget v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->$r8$clinit:I

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->checkMutable()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->removeArrayEntryAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:Ljava/util/Iterator;

    return-object p0
.end method
