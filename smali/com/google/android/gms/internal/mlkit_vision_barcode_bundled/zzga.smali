.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/adobe/xmp/impl/XMPNode$1;

.field public zzb:Lcom/google/common/collect/UnmodifiableIterator;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>(I)V

    new-instance v0, Lcom/adobe/xmp/impl/XMPNode$1;

    invoke-direct {v0, p1}, Lcom/adobe/xmp/impl/XMPNode$1;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zza:Lcom/adobe/xmp/impl/XMPNode$1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzb:Lcom/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzb:Lcom/google/common/collect/UnmodifiableIterator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzb:Lcom/google/common/collect/UnmodifiableIterator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzb:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zzb:Lcom/google/common/collect/UnmodifiableIterator;

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzga;->zza:Lcom/adobe/xmp/impl/XMPNode$1;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode$1;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
