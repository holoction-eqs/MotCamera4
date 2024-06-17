.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzit;

.field private zzk:Z

.field private zzl:I

.field private zzm:Z

.field private zzn:Z

.field private zzo:Z

.field private zzp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;-><init>()V

    return-object v0

    :cond_3
    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjr;

    const-string/jumbo v7, "zzi"

    const-string/jumbo v8, "zzj"

    const-string/jumbo v9, "zzk"

    const-string/jumbo v10, "zzl"

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjs;

    const-string/jumbo v12, "zzm"

    const-string/jumbo v13, "zzn"

    const-string/jumbo v14, "zzo"

    const-string/jumbo v15, "zzp"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u100c\u0003\u0005\u1004\u0004\u0006\u1009\u0005\u0007\u1007\u0006\u0008\u100c\u0007\t\u1007\u0008\n\u1007\t\u000b\u1007\n\u000c\u1002\u000b"

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
