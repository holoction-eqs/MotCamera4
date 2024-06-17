.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzb:Ljava/lang/Object;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null containingTypeDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
