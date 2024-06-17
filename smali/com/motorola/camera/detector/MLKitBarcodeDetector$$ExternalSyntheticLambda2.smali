.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(IJLcom/google/mlkit/vision/common/InputImage;Lcom/motorola/camera/detector/MLKitBarcodeDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iput-wide p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$1:J

    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$3:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_33

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$1:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->processBarcodes(Ljava/util/List;)V

    iget-object v1, v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz v1, :cond_33

    new-instance v1, Landroid/graphics/RectF;

    iget-object v5, v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v5, v5, Lcom/google/mlkit/vision/barcode/common/Barcode;->zzb:Landroid/graphics/Rect;

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v6, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$2:I

    neg-int v7, v6

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v7, 0x0

    const/16 v8, 0x5a

    iget-object v0, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$3:Lcom/google/mlkit/vision/common/InputImage;

    if-eq v6, v8, :cond_2

    const/16 v8, 0xb4

    if-eq v6, v8, :cond_1

    const/16 v8, 0x10e

    if-eq v6, v8, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    int-to-float v0, v0

    invoke-virtual {v5, v0, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    int-to-float v6, v6

    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    int-to-float v0, v0

    invoke-virtual {v5, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v2, v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iget-object v2, v2, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/detector/ScanningEngine;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/detector/results/ZxingResultParser;->FORMATS_2D:Ljava/util/EnumSet;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/detector/results/ZxingResultParser;->sMlKitToZxingFormats:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    if-eqz v5, :cond_31

    if-nez v6, :cond_3

    goto/16 :goto_21

    :cond_3
    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v11, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v12, Lcom/google/zxing/ResultPoint;

    iget v13, v1, Landroid/graphics/RectF;->right:F

    invoke-direct {v12, v13, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v11, Lcom/google/zxing/ResultPoint;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v11, v13, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v13, Lcom/google/zxing/ResultPoint;

    invoke-direct {v13, v10, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v0, v12, v11, v13}, [Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v1, v9

    check-cast v1, Lcom/google/mlkit/vision/barcode/internal/zzk;

    iget v10, v1, Lcom/google/mlkit/vision/barcode/internal/zzk;->$r8$classId:I

    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzc:Ljava/lang/String;

    goto :goto_2

    :goto_1
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    :goto_2
    if-nez v1, :cond_4

    move-object v1, v9

    check-cast v1, Lcom/google/mlkit/vision/barcode/internal/zzk;

    iget v10, v1, Lcom/google/mlkit/vision/barcode/internal/zzk;->$r8$classId:I

    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    packed-switch v10, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzb:Ljava/lang/String;

    goto :goto_4

    :goto_3
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzc:Ljava/lang/String;

    :goto_4
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    :cond_4
    new-instance v10, Lcom/google/zxing/Result;

    invoke-direct {v10, v1, v6, v0, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    :try_start_0
    iget-object v0, v10, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v11, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v11, v13

    goto :goto_5

    :catch_0
    iget-object v0, v10, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    int-to-long v11, v6

    :goto_5
    invoke-direct {v5, v11, v12}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;-><init>(J)V

    sget-object v0, Lcom/motorola/camera/detector/results/ZxingResultParser;->FORMATS_2D:Ljava/util/EnumSet;

    iget-object v6, v10, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v6, Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_5

    iput v6, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    goto :goto_6

    :cond_5
    iput v8, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    :goto_6
    iget-object v0, v10, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, [Lcom/google/zxing/ResultPoint;

    array-length v6, v0

    move v11, v7

    move v12, v11

    move v13, v8

    move v8, v12

    :goto_7
    if-ge v13, v6, :cond_e

    aget-object v14, v0, v13

    iget v15, v14, Lcom/google/zxing/ResultPoint;->x:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v17, v15, v16

    if-eqz v17, :cond_d

    iget v14, v14, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    cmpl-float v17, v7, v16

    if-eqz v17, :cond_6

    cmpl-float v17, v7, v15

    if-lez v17, :cond_7

    :cond_6
    move v7, v15

    :cond_7
    cmpl-float v17, v11, v16

    if-eqz v17, :cond_8

    cmpg-float v17, v11, v15

    if-gez v17, :cond_9

    :cond_8
    move v11, v15

    :cond_9
    cmpl-float v15, v8, v16

    if-eqz v15, :cond_a

    cmpl-float v15, v8, v14

    if-lez v15, :cond_b

    :cond_a
    move v8, v14

    :cond_b
    cmpl-float v15, v12, v16

    if-eqz v15, :cond_c

    cmpg-float v15, v12, v14

    if-gez v15, :cond_d

    :cond_c
    move v12, v14

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v6, v7

    float-to-int v7, v8

    float-to-int v8, v11

    float-to-int v11, v12

    invoke-direct {v0, v6, v7, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    iget-object v6, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    iput-wide v3, v6, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    iget-object v0, v10, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mBarcodeFormat:Lcom/google/zxing/BarcodeFormat;

    sget-object v3, Lcom/motorola/camera/detector/results/ZxingResultParser;->sSourceAnalytics:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    sget-object v0, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    array-length v4, v0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_10

    aget-object v8, v0, v7

    invoke-virtual {v8, v10}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Landroidx/transition/ViewOverlayApi14;

    move-result-object v8

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    new-instance v8, Lcom/google/zxing/client/result/TextParsedResult;

    invoke-direct {v8, v1}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;)V

    :goto_9
    iget-object v0, v8, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xd

    const/4 v4, 0x3

    const/4 v7, 0x4

    const/4 v11, 0x1

    const-string v12, ""

    packed-switch v0, :pswitch_data_2

    const/16 v4, 0x9

    goto/16 :goto_20

    :pswitch_2
    check-cast v8, Lcom/google/zxing/client/result/VINParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v1, v8, Lcom/google/zxing/client/result/VINParsedResult;->vin:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    const/16 v4, 0xb

    goto/16 :goto_20

    :pswitch_3
    check-cast v8, Lcom/google/zxing/client/result/ISBNParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v1, v8, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    goto/16 :goto_20

    :pswitch_4
    check-cast v8, Lcom/google/zxing/client/result/WifiParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;-><init>()V

    iget-object v1, v8, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    iget-boolean v1, v8, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    iput-boolean v1, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    const/16 v4, 0xc

    goto/16 :goto_20

    :pswitch_5
    check-cast v8, Lcom/google/zxing/client/result/CalendarParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Event;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Event;-><init>()V

    iget-object v1, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    iget-wide v12, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    iget-boolean v1, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    iput-boolean v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->startAllDay:Z

    iget-wide v12, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_a

    :cond_11
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    :goto_a
    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    iget-boolean v1, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    iput-boolean v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->endAllDay:Z

    iget-object v1, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->organizer:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->attendees:[Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    iget-wide v12, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    iput-wide v12, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    iget-wide v7, v8, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    iput-wide v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide v7, -0x3f70bf3333333333L    # -1000.1

    if-eqz v1, :cond_12

    iput-wide v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    :cond_12
    iget-wide v12, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-wide v7, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    :cond_13
    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    move v4, v11

    goto/16 :goto_20

    :pswitch_6
    check-cast v8, Lcom/google/zxing/client/result/SMSParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Message;-><init>()V

    iget-object v1, v8, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->numbers:[Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->vias:[Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    goto/16 :goto_1e

    :pswitch_7
    check-cast v8, Lcom/google/zxing/client/result/TelParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;-><init>()V

    iget-object v1, v8, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "\u200e"

    invoke-static {v4, v1, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    goto :goto_b

    :cond_14
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    :goto_b
    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    const/4 v4, 0x6

    goto/16 :goto_20

    :pswitch_8
    check-cast v8, Lcom/google/zxing/client/result/GeoParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v8, v7}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    move v4, v7

    goto/16 :goto_20

    :pswitch_9
    iget-object v0, v10, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/google/zxing/BarcodeFormat;

    check-cast v8, Lcom/google/zxing/client/result/TextParsedResult;

    sget-boolean v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->sShouldCheckDimoSupport:Z

    if-eqz v0, :cond_1a

    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "content://com.motorola.ccc.notification.CameraContentProvider/dimopackage"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sget-object v13, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->DIMO_PROVIDER_COLUMNS:[Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v13, v14, v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_18

    const/4 v0, 0x0

    :try_start_2
    aget-object v0, v13, v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    aget-object v13, v13, v11

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    :cond_15
    :goto_c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "dimo_scan_code"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\[|]"

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\s"

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoCodeTypes:[Ljava/lang/String;

    goto :goto_c

    :cond_16
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "dimo_app_name"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoTitle:Ljava/lang/String;

    goto :goto_c

    :cond_17
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "dimo_package_name"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoPackage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v13, v0

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_4
    invoke-virtual {v13, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v13

    :cond_18
    if-eqz v10, :cond_19

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->sShouldCheckDimoSupport:Z

    :cond_1a
    iget-object v10, v8, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_f

    :cond_1b
    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoCodeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    array-length v13, v0

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v13, :cond_1d

    aget-object v15, v0, v14

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1c

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1c

    move v0, v11

    goto :goto_10

    :cond_1c
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_1d
    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1e

    move v0, v4

    goto/16 :goto_16

    :cond_1e
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_5
    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.motorola.ccc.notification"

    const-string v15, "com.motorola.ccc.notification.ExternalMonopolyLauncher"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    if-ne v0, v11, :cond_1f

    move v0, v11

    goto :goto_11

    :catch_2
    move-exception v0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MotoMonopoly: Illegal Argument Exception "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MotoMonopoly"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_26

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v13, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->QR_PATTERNS:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    or-int/2addr v14, v15

    goto :goto_12

    :cond_20
    const-string v0, "Banco24Horas"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "SaqueDigital"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_21

    move v0, v11

    goto :goto_13

    :cond_21
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_22

    const/4 v0, 0x2

    goto :goto_16

    :cond_22
    if-nez v14, :cond_25

    const-string v0, "[^0-9]"

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v10, 0x2c

    if-eq v1, v10, :cond_23

    const/4 v0, 0x0

    goto :goto_15

    :cond_23
    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-static {v4, v10, v0}, Lkotlin/ExceptionsKt;->barcodeVDCalculation(IILjava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    goto :goto_14

    :cond_24
    const/16 v1, 0xb

    const/4 v10, 0x0

    const/4 v12, 0x4

    invoke-static {v12, v1, v0}, Lkotlin/ExceptionsKt;->barcodeVDCalculation(IILjava/lang/String;)I

    move-result v1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_15
    if-eqz v0, :cond_26

    :cond_25
    move v0, v11

    goto :goto_16

    :cond_26
    const/4 v0, 0x0

    :goto_16
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    iget-object v8, v8, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    if-ne v1, v7, :cond_28

    if-eqz v8, :cond_27

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0xa

    if-ne v1, v7, :cond_27

    const/4 v1, 0x2

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/detector/results/ZxingResultParser;->CODE_128_PREFIXES:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v11

    goto :goto_17

    :cond_27
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_28

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iput-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    goto/16 :goto_1d

    :cond_28
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "motorolardpconnection"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "motorolareadyformiracast"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    move v1, v11

    goto :goto_18

    :cond_2a
    const/4 v1, 0x0

    :goto_18
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v7, "com.motorola.permission.mobiledesktop.rdp"

    invoke-virtual {v4, v7}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2b

    move v4, v11

    goto :goto_19

    :cond_2b
    const/4 v4, 0x0

    :goto_19
    and-int/2addr v1, v4

    const-string v4, "com.motorola.mobiledesktop"

    :try_start_6
    sget-object v7, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1a

    :catch_3
    const/4 v11, 0x0

    :goto_1a
    and-int/2addr v1, v11

    if-eqz v1, :cond_2c

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    const/4 v1, 0x2

    invoke-direct {v0, v8, v1}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(Ljava/lang/Object;I)V

    goto :goto_1b

    :cond_2c
    if-eqz v0, :cond_2d

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;

    invoke-direct {v1, v8, v0}, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    :goto_1b
    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    goto :goto_1c

    :cond_2d
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Text;

    iget-object v1, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mBarcodeFormat:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1}, Lcom/motorola/camera/detector/results/tidbit/Text;-><init>(Lcom/google/zxing/BarcodeFormat;)V

    iput-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    :goto_1c
    const/16 v4, 0x8

    goto/16 :goto_20

    :pswitch_a
    const/16 v4, 0xa

    check-cast v8, Lcom/google/zxing/client/result/URIParsedResult;

    const-string v0, "MT:[A-Z0-9.-]{19,}"

    iget-object v7, v8, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v7, v11}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    goto/16 :goto_1f

    :cond_2e
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iput-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    goto/16 :goto_20

    :pswitch_b
    instance-of v0, v8, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    if-eqz v0, :cond_2f

    check-cast v8, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v1, v8, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    goto :goto_1d

    :cond_2f
    check-cast v8, Lcom/google/zxing/client/result/ProductParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>(I)V

    iget-object v1, v8, Lcom/google/zxing/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/Object;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    :goto_1d
    const/4 v4, 0x7

    goto :goto_20

    :pswitch_c
    check-cast v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Message;-><init>()V

    iget-object v1, v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;->tos:[Ljava/lang/String;

    if-eqz v1, :cond_30

    array-length v4, v1

    if-lez v4, :cond_30

    const/4 v4, 0x0

    aget-object v12, v1, v4

    :cond_30
    iput-object v12, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->email:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    :goto_1e
    const/4 v4, 0x5

    goto :goto_20

    :pswitch_d
    const/4 v1, 0x2

    check-cast v8, Lcom/google/zxing/client/result/AddressBookParsedResult;

    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;-><init>()V

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    iput-object v0, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    :goto_1f
    move v4, v1

    :goto_20
    iget v0, v3, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->mCheckInData:I

    shl-int/lit8 v0, v0, 0x8

    invoke-static {v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->getMCheckInData(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v6, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    goto :goto_22

    :cond_31
    :goto_21
    const/4 v5, 0x0

    :goto_22
    if-eqz v5, :cond_32

    iget-object v0, v2, Lcom/motorola/camera/detector/ScanningEngine;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_25

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized barcode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v9, Lcom/google/mlkit/vision/barcode/internal/zzk;

    iget v1, v9, Lcom/google/mlkit/vision/barcode/internal/zzk;->$r8$classId:I

    iget-object v2, v9, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    packed-switch v1, :pswitch_data_3

    goto :goto_23

    :pswitch_e
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzc:Ljava/lang/String;

    goto :goto_24

    :goto_23
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanningEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_25
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
