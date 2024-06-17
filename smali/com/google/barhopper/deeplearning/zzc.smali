.class public final Lcom/google/barhopper/deeplearning/zzc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/zzc;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/barhopper/deeplearning/zzc;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzc;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    const-class v1, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    return-void
.end method

.method public static zza$1()Lcom/google/barhopper/deeplearning/zzb;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzb;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/zzc;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/zzc;I)V
    .locals 1

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    iput p1, p0, Lcom/google/barhopper/deeplearning/zzc;->zzh:I

    return-void
.end method

.method public static zzd(Lcom/google/barhopper/deeplearning/zzc;F)V
    .locals 4

    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzc:I

    if-lt v1, v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzb:[F

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzc:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;-><init>(IZ[F)V

    iput-object v2, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    return-void
.end method

.method public static zze(Lcom/google/barhopper/deeplearning/zzc;F)V
    .locals 4

    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzc:I

    if-lt v1, v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzb:[F

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzc:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;-><init>(IZ[F)V

    iput-object v2, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    return-void
.end method

.method public static synthetic zzf(Lcom/google/barhopper/deeplearning/zzc;I)V
    .locals 1

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzd:I

    iput p1, p0, Lcom/google/barhopper/deeplearning/zzc;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 7

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
    sget-object p0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zzb;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzb;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzc;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzc;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string/jumbo v5, "zzi"

    const-string/jumbo v6, "zzj"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u0013\u0002\u0013\u0003\u100b\u0000\u0004\u100b\u0001\u0005\u100b\u0002\u0006\u100b\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
