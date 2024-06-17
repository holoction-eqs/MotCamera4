.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    iget-boolean v0, p1, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->processBarcodes(Ljava/util/List;)V

    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    :goto_1
    return-void
.end method
