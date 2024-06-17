.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        ">;>;",
        "Lcom/google/mlkit/vision/barcode/BarcodeScanner;"
    }
.end annotation


# instance fields
.field public final zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Landroidx/room/EntityInsertionAdapter;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzc:Z

    new-instance p0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>()V

    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    new-instance p0, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-direct {p0}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>()V

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_0
    iput-object p2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    new-instance p1, Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;I)V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zze(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->zzc:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    filled-new-array {p0}, [Lcom/google/android/gms/common/Feature;

    move-result-object p0

    :goto_0
    return-object p0
.end method
