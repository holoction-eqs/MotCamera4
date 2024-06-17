.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

.field public final synthetic zzf:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zznd;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

    iput-wide p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzb:J

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    iput-object p5, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    iput-object p6, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    iput-object p7, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/adobe/xmp/impl/ByteBuffer;
    .locals 10

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

    iget-wide v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzb:J

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    iget-object v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    iget-object v5, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {v6}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>()V

    new-instance v7, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {v7}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    iput-object v3, v7, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    sget-boolean v1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v7, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    iput-object v1, v7, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    iput-object v1, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object v1

    iput-object v1, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v1

    iput-object v1, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v1

    iput-object v1, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    iget v1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    const/4 v4, 0x0

    const/16 v5, 0x23

    const v7, 0x32315659

    const/16 v8, 0x11

    if-eq v1, v8, :cond_2

    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, v5, :cond_1

    move p0, v4

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    throw v2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    :goto_1
    new-instance v2, Lcom/airbnb/lottie/model/MutablePair;

    const/16 v9, 0xc

    invoke-direct {v2, v9, v4}, Lcom/airbnb/lottie/model/MutablePair;-><init>(II)V

    if-eq v1, v3, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v7, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    if-eq v1, v8, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    :goto_2
    iput-object v1, v2, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v2, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;-><init>(Lcom/airbnb/lottie/model/MutablePair;)V

    iput-object p0, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    new-instance p0, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-direct {p0}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>()V

    iget-boolean v0, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_3
    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-direct {v0, p0, v4}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;I)V

    return-object v0

    :cond_9
    invoke-static {v2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    throw v2
.end method
