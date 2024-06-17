.class public final Lcom/google/barhopper/deeplearning/zzn;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/zzn;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:F

.field private zzm:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/barhopper/deeplearning/zzn;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzn;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    const-class v1, Lcom/google/barhopper/deeplearning/zzn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zze:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    iput-object v1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzg:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzi:F

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzj:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzk:F

    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzl:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzm:I

    return-void
.end method

.method public static zza$1()Lcom/google/barhopper/deeplearning/zzm;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzm;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/zzn;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzd:I

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method

.method public static synthetic zzd(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzd:I

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 10

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
    sget-object p0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zzm;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzm;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzn;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzn;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string/jumbo v5, "zzi"

    const-string/jumbo v6, "zzj"

    const-string/jumbo v7, "zzk"

    const-string/jumbo v8, "zzl"

    const-string/jumbo v9, "zzm"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u100a\u0001\u0003\u1008\u0002\u0004\u100a\u0003\u0005\u1001\u0004\u0006\u1001\u0005\u0007\u1001\u0006\u0008\u1001\u0007\t\u1004\u0008"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
