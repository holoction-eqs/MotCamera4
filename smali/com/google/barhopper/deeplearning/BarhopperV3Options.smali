.class public final Lcom/google/barhopper/deeplearning/BarhopperV3Options;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/barhopper/deeplearning/zzi;

.field private zzf:Lcom/google/barhopper/deeplearning/zzn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    const-class v1, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public static zza()Lcom/google/barhopper/deeplearning/zzk;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzk;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/BarhopperV3Options;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zze:Lcom/google/barhopper/deeplearning/zzi;

    iget p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzd:I

    return-void
.end method

.method public static synthetic zzd(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzf:Lcom/google/barhopper/deeplearning/zzn;

    iget p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zzk;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzk;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzf"

    const-string p1, "zzd"

    const-string p2, "zze"

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
