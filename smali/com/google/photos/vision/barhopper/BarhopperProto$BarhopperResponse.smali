.class public final Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzi:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    const-class v1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzg:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object v0
.end method

.method public static zzb([BLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
    .locals 8

    sget-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    array-length v5, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v7

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;

    invoke-direct {v6, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;)V

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgx; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzW(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object v0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgx;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    throw p0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-byte v1, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    invoke-direct {p0, v1}, Lcom/google/photos/vision/barhopper/zzj;-><init>(I)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "zzd"

    const-string v1, "zze"

    const-class v2, Lcom/google/photos/vision/barhopper/zzc;

    const-string v3, "zzf"

    sget-object v4, Lcom/google/photos/vision/barhopper/zzah;->zza:Lcom/google/photos/vision/barhopper/zzah;

    const-string v5, "zzg"

    const-string v6, "zzh"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001\u041b\u0002\u150c\u0000\u0003\u1008\u0001\u0004\u100a\u0002"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
