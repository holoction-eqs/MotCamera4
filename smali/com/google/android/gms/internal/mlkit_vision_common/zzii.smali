.class public final enum Lcom/google/android/gms/internal/mlkit_vision_common/zzii;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzag;


# static fields
.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

.field public static final synthetic zzk:[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;


# instance fields
.field public final zzl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v1, "UNKNOWN_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v2, "NV16"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v3, "NV21"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v4, "YV12"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v5, "YUV_420_888"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v8, "JPEG"

    const/4 v9, 0x5

    const/16 v10, 0x8

    invoke-direct {v5, v8, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v11, "BITMAP"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v12, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v6, "CM_SAMPLE_BUFFER_REF"

    invoke-direct {v11, v6, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v6, "UI_IMAGE"

    invoke-direct {v9, v6, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    const-string v6, "CV_PIXEL_BUFFER_REF"

    const/16 v7, 0x9

    invoke-direct {v10, v6, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;-><init>(Ljava/lang/String;II)V

    move-object v6, v8

    move-object v7, v11

    move-object v8, v9

    move-object v9, v10

    filled-new-array/range {v0 .. v9}, [Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzk:[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzl:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzk:[Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzl:I

    return p0
.end method
