.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    sub-int/2addr p0, p1

    return p0
.end method
