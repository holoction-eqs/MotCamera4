.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbz;

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return v0

    :cond_3
    return p0
.end method
