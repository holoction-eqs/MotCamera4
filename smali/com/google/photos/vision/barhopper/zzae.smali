.class public final Lcom/google/photos/vision/barhopper/zzae;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzae;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzae;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzae;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    const-class v1, Lcom/google/photos/vision/barhopper/zzae;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzg:B

    return-void
.end method

.method public static zzc()Lcom/google/photos/vision/barhopper/zzad;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object v0

    check-cast v0, Lcom/google/photos/vision/barhopper/zzad;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/photos/vision/barhopper/zzae;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    return-object v0
.end method

.method public static synthetic zze(ILcom/google/photos/vision/barhopper/zzae;)V
    .locals 1

    iget v0, p1, Lcom/google/photos/vision/barhopper/zzae;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/photos/vision/barhopper/zzae;->zzd:I

    iput p0, p1, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    return-void
.end method

.method public static synthetic zzf(ILcom/google/photos/vision/barhopper/zzae;)V
    .locals 1

    iget v0, p1, Lcom/google/photos/vision/barhopper/zzae;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/google/photos/vision/barhopper/zzae;->zzd:I

    iput p0, p1, Lcom/google/photos/vision/barhopper/zzae;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzf:I

    return p0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

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
    iput-byte p1, p0, Lcom/google/photos/vision/barhopper/zzae;->zzg:B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzad;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzad;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/zzae;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzae;-><init>()V

    return-object p0

    :cond_4
    const-string p0, "zzf"

    const-string p1, "zzd"

    const-string p2, "zze"

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1504\u0000\u0002\u1504\u0001"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzg:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
