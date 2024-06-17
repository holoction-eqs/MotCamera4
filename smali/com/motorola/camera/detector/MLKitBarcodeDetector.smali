.class public final Lcom/motorola/camera/detector/MLKitBarcodeDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sInitialized:Z = false

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public mBackoffFrameCounter:I

.field public mBackoffTimeBetweenScansFactor:I

.field public final mBarcodeListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

.field public mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

.field public mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastCaptureTimeStamp:J

.field public mScanAllowed:Z

.field public mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

.field public mScanning:Z

.field public final mShouldBackoff:Z

.field public final mTimeBetweenScans:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    iput-boolean p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    new-instance p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final processBarcodes(Ljava/util/List;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    iput v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    iget-object v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v3, :cond_1

    :cond_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz v5, :cond_4

    if-eq v5, v3, :cond_3

    invoke-virtual {v5}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v6, v1

    goto :goto_0

    :cond_4
    move v6, v2

    :goto_0
    if-eqz v6, :cond_2

    :goto_1
    iput-object v5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v5, :cond_a

    iget-object v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v3, :cond_6

    :cond_5
    move-object v5, v0

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz v5, :cond_9

    if-eq v5, v3, :cond_8

    invoke-virtual {v5}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v6, v1

    goto :goto_2

    :cond_9
    move v6, v2

    :goto_2
    if-eqz v6, :cond_7

    :goto_3
    iput-object v5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v5, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    goto :goto_4

    :cond_a
    move-object v0, v3

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result p1

    goto :goto_5

    :cond_c
    const/4 p1, -0x1

    :goto_5
    const/16 v3, 0x10

    if-eq p1, v3, :cond_d

    const/16 v3, 0x100

    if-eq p1, v3, :cond_d

    const/16 v3, 0x800

    if-eq p1, v3, :cond_d

    const/16 v3, 0x1000

    if-eq p1, v3, :cond_d

    move p1, v2

    goto :goto_6

    :cond_d
    move p1, v1

    :goto_6
    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz p1, :cond_e

    if-eqz v3, :cond_e

    if-eq p1, v3, :cond_f

    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object p1

    invoke-virtual {v3}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_7

    :cond_e
    move v1, v2

    :cond_f
    :goto_7
    if-eqz v1, :cond_16

    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    goto :goto_9

    :cond_11
    iget-boolean p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    if-nez p1, :cond_12

    goto :goto_8

    :cond_12
    iget p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq p1, v2, :cond_13

    if-ne p1, v3, :cond_14

    :cond_13
    iget v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    :cond_14
    if-gt p1, v3, :cond_15

    add-int/2addr p1, v1

    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    :cond_15
    :goto_8
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez p1, :cond_17

    :cond_16
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    goto :goto_9

    :cond_17
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    :goto_9
    return-void
.end method
