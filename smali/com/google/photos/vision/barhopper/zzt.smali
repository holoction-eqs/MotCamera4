.class public final Lcom/google/photos/vision/barhopper/zzt;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzt;


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

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzt;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzt;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzt;->zza:Lcom/google/photos/vision/barhopper/zzt;

    const-class v1, Lcom/google/photos/vision/barhopper/zzt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzr:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/zzt;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzt;->zza:Lcom/google/photos/vision/barhopper/zzt;

    return-object v0
.end method

.method public static zzb()Lcom/google/photos/vision/barhopper/zzt;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzt;->zza:Lcom/google/photos/vision/barhopper/zzt;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzk:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzl:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzj:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzm:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 16

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/photos/vision/barhopper/zzt;->zza:Lcom/google/photos/vision/barhopper/zzt;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/photos/vision/barhopper/zzj;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/photos/vision/barhopper/zzj;-><init>(I)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/photos/vision/barhopper/zzt;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzt;-><init>()V

    return-object v0

    :cond_3
    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string/jumbo v6, "zzi"

    const-string/jumbo v7, "zzj"

    const-string/jumbo v8, "zzk"

    const-string/jumbo v9, "zzl"

    const-string/jumbo v10, "zzm"

    const-string/jumbo v11, "zzn"

    const-string/jumbo v12, "zzo"

    const-string/jumbo v13, "zzp"

    const-string/jumbo v14, "zzq"

    const-string/jumbo v15, "zzr"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/photos/vision/barhopper/zzt;->zza:Lcom/google/photos/vision/barhopper/zzt;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v3, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1008\u0007\t\u1008\u0008\n\u1008\t\u000b\u1008\n\u000c\u1008\u000b\r\u1008\u000c\u000e\u1008\r"

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzq:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzp:Ljava/lang/String;

    return-object p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzo:Ljava/lang/String;

    return-object p0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzr:Ljava/lang/String;

    return-object p0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzn:Ljava/lang/String;

    return-object p0
.end method

.method public final zzq()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzt;->zzg:Ljava/lang/String;

    return-object p0
.end method
