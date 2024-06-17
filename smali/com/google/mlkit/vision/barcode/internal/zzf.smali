.class public final Lcom/google/mlkit/vision/barcode/internal/zzf;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/ViewOverlayApi14;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzf;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzf;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-string v1, "play-services-mlkit-barcode-scanning"

    goto :goto_0

    :cond_0
    const-string v1, "barcode-scanning"

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    move-result-object v1

    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    const-string v3, "com.google.mlkit.dynamite.barcode"

    invoke-static {v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v2

    const v3, 0xc306c20

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzn;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/mlkit/vision/barcode/internal/zzn;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzl;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/mlkit/vision/barcode/internal/zzl;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    :goto_3
    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/mlkit/vision/barcode/internal/zzi;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    return-object v0
.end method
