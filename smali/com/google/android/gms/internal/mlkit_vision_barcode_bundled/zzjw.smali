.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjq;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziw;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhx;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjg;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziq;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzic;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjz;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzif;

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjb;

.field private zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzje;

.field private zzp:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzje;

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzje;

.field private zzr:Z

.field private zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzit;

.field private zzt:I

.field private zzu:Z

.field private zzv:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzju;

.field private zzw:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhz;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;->zzt:I

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 22

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzl;-><init>(I)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;-><init>()V

    return-object v0

    :cond_3
    const-string v1, "zzd"

    const-string v2, "zze"

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzig;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzig;

    const-string v4, "zzf"

    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string/jumbo v7, "zzi"

    const-string/jumbo v8, "zzo"

    const-string/jumbo v9, "zzp"

    const-string/jumbo v10, "zzq"

    const-string/jumbo v11, "zzr"

    const-string/jumbo v12, "zzj"

    const-string/jumbo v13, "zzs"

    const-string/jumbo v14, "zzk"

    const-string/jumbo v15, "zzl"

    const-string/jumbo v16, "zzt"

    const-string/jumbo v17, "zzm"

    const-string/jumbo v18, "zzu"

    const-string/jumbo v19, "zzv"

    const-string/jumbo v20, "zzn"

    const-string/jumbo v21, "zzw"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v3, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u1009\n\u0007\u1009\u000b\u0008\u1009\u000c\t\u1007\r\n\u1009\u0005\u000b\u1009\u000e\u000c\u1009\u0006\r\u1009\u0007\u000e\u1004\u000f\u000f\u1009\u0008\u0010\u1007\u0010\u0011\u1009\u0011\u0012\u1009\t\u0013\u1009\u0012"

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
