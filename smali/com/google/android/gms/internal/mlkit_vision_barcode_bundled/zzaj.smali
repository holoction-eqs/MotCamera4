.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzy;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

.field private zzn:B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/UInt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/UInt$Companion;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    move-result-object v1

    const v2, 0x12660614

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    invoke-static {v1, v0, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzH(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzn:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzh:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 9

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzn:B

    return-object v1

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>(Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "zzf"

    const-string v1, "zzg"

    const-string v2, "zzh"

    const-string/jumbo v3, "zzi"

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;

    const-string/jumbo v5, "zzj"

    const-string/jumbo v6, "zzk"

    const-string/jumbo v7, "zzm"

    const-string/jumbo v8, "zzl"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\u01f4\u0007\u0000\u0001\u0002\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u001e\u0005\u1008\u0002\u0006\u1008\u0003\u000f\u1409\u0005\u01f4\u1009\u0004"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzn:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
