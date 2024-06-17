.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzm:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzm:B

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 12

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

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzm:B

    return-object v1

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze$$ExternalSynthetic$IA2;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "zzd"

    const-string v1, "zze"

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzi;

    const-string v3, "zzf"

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string/jumbo v7, "zzi"

    const-string/jumbo v8, "zzk"

    const-string/jumbo v9, "zzl"

    const-class v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;

    const-string/jumbo v11, "zzj"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u000f\u0008\u0000\u0002\u0004\u0001\u100c\u0000\u0003\u041b\u0004\u1004\u0001\u0005\u1409\u0002\u0006\u1409\u0003\u0007\u1004\u0005\u0008\u001b\u000f\u1409\u0004"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;->zzm:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
