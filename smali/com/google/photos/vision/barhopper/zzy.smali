.class public final Lcom/google/photos/vision/barhopper/zzy;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzy;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzy;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzy;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    const-class v1, Lcom/google/photos/vision/barhopper/zzy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/zzy;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    return-object v0
.end method

.method public static zzb()Lcom/google/photos/vision/barhopper/zzy;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()I
    .locals 2

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zze:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 6

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
    sget-object p0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/google/photos/vision/barhopper/zzj;-><init>(I)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzy;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzy;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "zzd"

    const-string v1, "zze"

    sget-object v2, Lcom/google/photos/vision/barhopper/zzw;->zza:Lcom/google/photos/vision/barhopper/zzw;

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
