.class public final Lcom/google/photos/vision/barhopper/zzaa;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzaa;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzaa;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzaa;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

    const-class v1, Lcom/google/photos/vision/barhopper/zzaa;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzm:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/zzaa;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 10

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
    sget-object p0, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    const/16 p1, 0xb

    invoke-direct {p0, p1}, Lcom/google/photos/vision/barhopper/zzj;-><init>(I)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzaa;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzaa;-><init>()V

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

    const-string/jumbo v8, "zzl"

    const-string/jumbo v9, "zzm"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1008\u0007\t\u1008\u0008"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
