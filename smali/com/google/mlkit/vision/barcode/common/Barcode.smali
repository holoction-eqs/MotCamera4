.class public final Lcom/google/mlkit/vision/barcode/common/Barcode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

.field public final zzb:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzk;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    iget p1, p1, Lcom/google/mlkit/vision/barcode/internal/zzk;->$r8$classId:I

    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zze:[Landroid/graphics/Point;

    if-eqz v4, :cond_2

    move v5, v3

    move v6, v5

    move v3, v2

    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_0

    aget-object v7, v4, v0

    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, v7, Landroid/graphics/Point;->y:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :goto_1
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    if-eqz v5, :cond_2

    move v5, v3

    move v6, v5

    move v3, v2

    :goto_2
    iget-object v7, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    array-length v8, v7

    if-ge v0, v8, :cond_1

    aget-object v7, v7, v0

    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, v7, Landroid/graphics/Point;->y:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zzb:Landroid/graphics/Rect;

    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zze:[Landroid/graphics/Point;

    goto :goto_5

    :goto_4
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getFormat()I
    .locals 2

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    check-cast p0, Lcom/google/mlkit/vision/barcode/internal/zzk;

    iget v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->$r8$classId:I

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zza:I

    goto :goto_1

    :goto_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zza:I

    :goto_1
    const/16 v0, 0x1000

    const/4 v1, -0x1

    if-gt p0, v0, :cond_0

    if-nez p0, :cond_1

    return v1

    :cond_0
    move p0, v1

    :cond_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getRawBytes()[B
    .locals 1

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    check-cast p0, Lcom/google/mlkit/vision/barcode/internal/zzk;

    iget v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->$r8$classId:I

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzd:[B

    goto :goto_1

    :goto_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzo:[B

    :goto_1
    if-eqz p0, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
