.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdi;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final synthetic zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;


# instance fields
.field public final zzo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v2, "TYPE_CONTACT_INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v3, "TYPE_EMAIL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v4, "TYPE_ISBN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v5, "TYPE_PHONE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v6, "TYPE_PRODUCT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v7, "TYPE_SMS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v8, "TYPE_TEXT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v9, "TYPE_URL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v10, "TYPE_WIFI"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v11, "TYPE_GEO"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v12, "TYPE_CALENDAR_EVENT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const-string v13, "TYPE_DRIVER_LICENSE"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    filled-new-array/range {v0 .. v12}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzo:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzo:I

    return p0
.end method
