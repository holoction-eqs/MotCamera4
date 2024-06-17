.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzij;

.field private zzi:Ljava/lang/String;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zzg:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zzi:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 13

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    const/16 p1, 0x12

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(ILjava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "zzd"

    const-string v1, "zze"

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzim;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzim;

    const-string v3, "zzf"

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzil;

    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string/jumbo v7, "zzi"

    const-string/jumbo v8, "zzj"

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzio;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzio;

    const-string/jumbo v10, "zzk"

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzip;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzip;

    const-string/jumbo v12, "zzl"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1004\u0001\u0004\u1009\u0002\u0005\u1008\u0003\u0006\u100c\u0004\u0007\u100c\u0005\u0008\'"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
