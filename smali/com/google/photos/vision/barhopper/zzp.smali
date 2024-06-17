.class public final Lcom/google/photos/vision/barhopper/zzp;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzp;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/photos/vision/barhopper/zzn;

.field private zzk:Lcom/google/photos/vision/barhopper/zzn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzp;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzp;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzp;->zza:Lcom/google/photos/vision/barhopper/zzp;

    const-class v1, Lcom/google/photos/vision/barhopper/zzp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzp;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/photos/vision/barhopper/zzp;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzp;->zza:Lcom/google/photos/vision/barhopper/zzp;

    return-object v0
.end method

.method public static zzd()Lcom/google/photos/vision/barhopper/zzp;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzp;->zza:Lcom/google/photos/vision/barhopper/zzp;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/photos/vision/barhopper/zzn;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzk:Lcom/google/photos/vision/barhopper/zzn;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzn;->zzi()Lcom/google/photos/vision/barhopper/zzn;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzb()Lcom/google/photos/vision/barhopper/zzn;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzj:Lcom/google/photos/vision/barhopper/zzn;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzn;->zzi()Lcom/google/photos/vision/barhopper/zzn;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 8

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
    sget-object p0, Lcom/google/photos/vision/barhopper/zzp;->zza:Lcom/google/photos/vision/barhopper/zzp;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/google/photos/vision/barhopper/zzj;-><init>(I)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzp;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzp;-><init>()V

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

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/zzp;->zza:Lcom/google/photos/vision/barhopper/zzp;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1009\u0005\u0007\u1009\u0006"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzp;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzp;->zze:Ljava/lang/String;

    return-object p0
.end method
