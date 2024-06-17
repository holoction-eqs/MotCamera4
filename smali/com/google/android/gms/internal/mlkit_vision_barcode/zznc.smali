.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdi;


# static fields
.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

.field public static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;


# instance fields
.field public final zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const-string v2, "TYPE_THIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const-string v3, "TYPE_THICK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    const-string v4, "TYPE_GMV"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzf:I

    return p0
.end method
