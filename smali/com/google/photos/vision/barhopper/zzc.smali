.class public final Lcom/google/photos/vision/barhopper/zzc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzc;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/photos/vision/barhopper/zzr;

.field private zzj:Lcom/google/photos/vision/barhopper/zzy;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

.field private zzl:Lcom/google/photos/vision/barhopper/zzag;

.field private zzm:Lcom/google/photos/vision/barhopper/zzao;

.field private zzn:Lcom/google/photos/vision/barhopper/zzaj;

.field private zzo:Lcom/google/photos/vision/barhopper/zzac;

.field private zzp:Lcom/google/photos/vision/barhopper/zzp;

.field private zzq:Lcom/google/photos/vision/barhopper/zzt;

.field private zzr:Lcom/google/photos/vision/barhopper/zzl;

.field private zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

.field private zzu:Ljava/lang/String;

.field private zzv:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzw:Z

.field private zzx:D

.field private zzy:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzz:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzc;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzc;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    const-class v1, Lcom/google/photos/vision/barhopper/zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzz:B

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzc;->zzg:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    iput-object v2, p0, Lcom/google/photos/vision/barhopper/zzc;->zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    iput-object v3, p0, Lcom/google/photos/vision/barhopper/zzc;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzc;->zzu:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/photos/vision/barhopper/zzc;->zzv:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/photos/vision/barhopper/zzc;->zzw:Z

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzy:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/photos/vision/barhopper/zzc;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    return-object v0
.end method

.method public static zzp(Lcom/google/photos/vision/barhopper/zzc;ILcom/google/photos/vision/barhopper/zzae;)V
    .locals 2

    iget-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    :cond_1
    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzA()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzh:I

    invoke-static {p0}, Lcom/google/photos/vision/barhopper/zzi;->zza(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final zza()I
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzd()Lcom/google/photos/vision/barhopper/zzp;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzp:Lcom/google/photos/vision/barhopper/zzp;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzp;->zzd()Lcom/google/photos/vision/barhopper/zzp;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Lcom/google/photos/vision/barhopper/zzr;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzi:Lcom/google/photos/vision/barhopper/zzr;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzr;->zzc()Lcom/google/photos/vision/barhopper/zzr;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzf()Lcom/google/photos/vision/barhopper/zzt;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzq:Lcom/google/photos/vision/barhopper/zzt;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzt;->zzb()Lcom/google/photos/vision/barhopper/zzt;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-byte v1, v0, Lcom/google/photos/vision/barhopper/zzc;->zzz:B

    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/photos/vision/barhopper/zzb;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzb;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/photos/vision/barhopper/zzc;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzc;-><init>()V

    return-object v0

    :cond_4
    const-string v1, "zzd"

    const-string v2, "zze"

    sget-object v3, Lcom/google/photos/vision/barhopper/zze;->zza:Lcom/google/photos/vision/barhopper/zze;

    const-string v4, "zzf"

    const-string v5, "zzg"

    const-string v6, "zzh"

    sget-object v7, Lcom/google/photos/vision/barhopper/zzh;->zza:Lcom/google/photos/vision/barhopper/zzh;

    const-string/jumbo v8, "zzi"

    const-string/jumbo v9, "zzj"

    const-string/jumbo v10, "zzk"

    const-string/jumbo v11, "zzl"

    const-string/jumbo v12, "zzm"

    const-string/jumbo v13, "zzn"

    const-string/jumbo v14, "zzs"

    const-class v15, Lcom/google/photos/vision/barhopper/zzae;

    const-string/jumbo v16, "zzu"

    const-string/jumbo v17, "zzv"

    const-class v18, Lcom/google/photos/vision/barhopper/zzae;

    const-string/jumbo v19, "zzy"

    const-string/jumbo v20, "zzo"

    const-string/jumbo v21, "zzp"

    const-string/jumbo v22, "zzq"

    const-string/jumbo v23, "zzt"

    const-string/jumbo v24, "zzr"

    const-string/jumbo v25, "zzw"

    const-string/jumbo v26, "zzx"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    const-string v3, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0003\u000b\u0001\u150c\u0000\u0002\u150a\u0001\u0003\u1508\u0002\u0004\u150c\u0003\u0005\u1409\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1409\u0007\t\u1409\u0008\n\u1409\t\u000b\u041b\u000c\u1008\u000e\r\u041b\u000e\u100a\u0011\u000f\u1409\n\u0010\u1009\u000b\u0011\u1009\u000c\u0012\u0016\u0013\u1009\r\u0014\u1007\u000f\u0015\u1000\u0010"

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_5
    iget-byte v0, v0, Lcom/google/photos/vision/barhopper/zzc;->zzz:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/photos/vision/barhopper/zzy;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzj:Lcom/google/photos/vision/barhopper/zzy;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzy;->zzb()Lcom/google/photos/vision/barhopper/zzy;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzi()Lcom/google/photos/vision/barhopper/zzac;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzo:Lcom/google/photos/vision/barhopper/zzac;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzac;->zzd()Lcom/google/photos/vision/barhopper/zzac;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzj()Lcom/google/photos/vision/barhopper/zzag;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzl:Lcom/google/photos/vision/barhopper/zzag;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzag;->zzb()Lcom/google/photos/vision/barhopper/zzag;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzk()Lcom/google/photos/vision/barhopper/zzaj;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzn:Lcom/google/photos/vision/barhopper/zzaj;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzaj;->zzb()Lcom/google/photos/vision/barhopper/zzaj;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzl()Lcom/google/photos/vision/barhopper/zzao;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzm:Lcom/google/photos/vision/barhopper/zzao;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzao;->zzb()Lcom/google/photos/vision/barhopper/zzao;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-object p0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzo()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzs:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method

.method public final zzq()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzr()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzs()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzt()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzu()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzv()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzw()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzx()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzy()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzd:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzz()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    invoke-static {p0}, Lcom/google/photos/vision/barhopper/zzf;->zza(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
