.class public final Lcom/google/photos/vision/barhopper/zzr;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzr;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzl:Ljava/lang/String;

.field private zzm:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzr;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzr;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    const-class v1, Lcom/google/photos/vision/barhopper/zzr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzm:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzg:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzb()Lcom/google/photos/vision/barhopper/zzr;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    return-object v0
.end method

.method public static zzc()Lcom/google/photos/vision/barhopper/zzr;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 12

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
    iput-byte p1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzm:B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/photos/vision/barhopper/zzj;-><init>(I)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/zzr;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzr;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    const-string/jumbo v6, "zzi"

    const-class v7, Lcom/google/photos/vision/barhopper/zzy;

    const-string/jumbo v8, "zzj"

    const-string/jumbo v9, "zzk"

    const-class v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;

    const-string/jumbo v11, "zzl"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0004\u0001\u0001\u1009\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u001b\u0005\u001b\u0006\u001a\u0007\u041b\u0008\u1008\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzm:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method
