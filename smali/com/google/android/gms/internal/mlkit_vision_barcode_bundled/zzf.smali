.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzy;

.field private zzm:B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    move-result-object v1

    const v2, 0xba4a86

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    invoke-static {v1, v0, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzH(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzm:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzf:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 11

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzm:B

    return-object v1

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze$$ExternalSynthetic$IA3;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "zze"

    const-string v1, "zzg"

    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    const-string/jumbo v3, "zzi"

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    const-string v5, "zzh"

    const-class v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzm;

    const-string/jumbo v7, "zzj"

    const-string v8, "zzf"

    const-string/jumbo v9, "zzk"

    const-string/jumbo v10, "zzl"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0007\u0000\u0001\u0002\u01f4\u0007\u0000\u0003\u0004\u0002\u041b\u0005\u041b\u0006\u001b\u0008\u1409\u0001\n\u1008\u0000\u000b\u1409\u0002\u01f4\u1009\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzm:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
