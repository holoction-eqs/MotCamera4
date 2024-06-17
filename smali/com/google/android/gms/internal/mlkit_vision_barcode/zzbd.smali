.class public Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field public final synthetic zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()V

    :cond_0
    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzc()V

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Ljava/util/RandomAccess;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;->zza:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    :goto_1
    return-object v1
.end method
