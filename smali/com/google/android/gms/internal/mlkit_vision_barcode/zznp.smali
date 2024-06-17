.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdi;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final synthetic zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;


# instance fields
.field public final zzp:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const-string v2, "FORMAT_CODE_128"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const-string v3, "FORMAT_CODE_39"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const-string v4, "FORMAT_CODE_93"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const-string v5, "FORMAT_CODABAR"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v6, 0x5

    const/16 v8, 0x10

    const-string v9, "FORMAT_DATA_MATRIX"

    invoke-direct {v5, v9, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v8, 0x6

    const/16 v9, 0x20

    const-string v10, "FORMAT_EAN_13"

    invoke-direct {v6, v10, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v9, 0x7

    const/16 v10, 0x40

    const-string v11, "FORMAT_EAN_8"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const-string v10, "FORMAT_ITF"

    const/16 v11, 0x80

    invoke-direct {v9, v10, v7, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v7, 0x9

    const/16 v11, 0x100

    const-string v12, "FORMAT_QR_CODE"

    invoke-direct {v10, v12, v7, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v7, 0xa

    const/16 v12, 0x200

    const-string v13, "FORMAT_UPC_A"

    invoke-direct {v11, v13, v7, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v7, 0xb

    const/16 v13, 0x400

    const-string v14, "FORMAT_UPC_E"

    invoke-direct {v12, v14, v7, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v7, 0xc

    const/16 v14, 0x800

    const-string v15, "FORMAT_PDF417"

    invoke-direct {v13, v15, v7, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v7, 0xd

    const/16 v15, 0x1000

    move-object/from16 v16, v13

    const-string v13, "FORMAT_AZTEC"

    invoke-direct {v14, v13, v7, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object v13, v14

    filled-new-array/range {v0 .. v13}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzp:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzp:I

    return p0
.end method
