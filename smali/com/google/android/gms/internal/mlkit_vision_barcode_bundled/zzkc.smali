.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;
.source "SourceFile"


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;


# instance fields
.field private zze:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zze:B

    return-void
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zze:B

    return-object v1

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;-><init>()V

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string p2, "\u0003\u0000"

    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zze:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
