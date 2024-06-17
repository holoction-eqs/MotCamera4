.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;->zza:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final zza(JLjava/lang/Object;)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;->zza:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    if-eqz p1, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {p3, p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 3

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;-><init>(I)V

    goto :goto_2

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object p4

    :goto_0
    move-object v0, p4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;->zza:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;-><init>(I)V

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->size()I

    move-result p4

    invoke-virtual {v1, p4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzev;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :goto_2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p4

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object p4

    goto :goto_0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p4, :cond_6

    if-lez v1, :cond_6

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-gtz p4, :cond_7

    goto :goto_4

    :cond_7
    move-object p0, v0

    :goto_4
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
