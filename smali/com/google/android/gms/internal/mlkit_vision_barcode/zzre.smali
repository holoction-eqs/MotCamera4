.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzre;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;


# instance fields
.field public final zza:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzre;->zza:Ljava/util/ArrayList;

    iget-boolean p0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;->zzb:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/adobe/xmp/impl/ByteBuffer;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzre;->zza:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zza(Lcom/adobe/xmp/impl/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
