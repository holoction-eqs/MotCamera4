.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/adobe/xmp/impl/ByteBuffer;
    .locals 2

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    new-instance v0, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-direct {v0}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>()V

    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_0
    iput-object v1, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    new-instance v1, Lcom/google/mlkit/vision/barcode/internal/zza;

    invoke-direct {v1}, Lcom/google/mlkit/vision/barcode/internal/zza;-><init>()V

    iput-object p0, v1, Lcom/google/mlkit/vision/barcode/internal/zza;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznw;-><init>(Lcom/google/mlkit/vision/barcode/internal/zza;)V

    iput-object p0, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    new-instance p0, Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;I)V

    return-object p0
.end method
