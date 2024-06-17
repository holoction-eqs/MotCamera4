.class public final Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(IZLjava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    iput-boolean p2, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzb:Z

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iget v1, p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    iget v3, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    if-ne v3, v1, :cond_2

    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzb:Z

    iget-boolean v3, p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzb:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzb:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zzc:Ljava/util/concurrent/Executor;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
