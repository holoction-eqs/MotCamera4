.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:I

.field private zzg:Z

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;->zzg:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;->zzm:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 16

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;-><init>()V

    return-object v0

    :cond_3
    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziy;

    const-string v5, "zzg"

    const-string v6, "zzh"

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziu;

    const-string/jumbo v8, "zzi"

    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzix;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzix;

    const-string/jumbo v10, "zzj"

    const-string/jumbo v12, "zzk"

    const-string/jumbo v14, "zzl"

    const-string/jumbo v15, "zzm"

    move-object v9, v13

    move-object v11, v13

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u100c\u0001\u0003\u1007\u0002\u0004\u100c\u0003\u0005\u100c\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u1008\u0007\t\u1008\u0008"

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
