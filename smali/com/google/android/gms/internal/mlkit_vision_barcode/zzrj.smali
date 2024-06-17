.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

.field public final synthetic zzc:Lcom/google/common/base/Joiner;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Lcom/google/common/base/Joiner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;->zzc:Lcom/google/common/base/Joiner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzl:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzo()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;->zza:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    check-cast v7, Ljava/util/List;

    instance-of v8, v7, Ljava/util/RandomAccess;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;

    invoke-direct {v8, v3, v5, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;

    invoke-direct {v8, v3, v5, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbb;)V

    :goto_1
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v7, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-direct {v7}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v11, v8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v10, 0x7fffffffffffffffL

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    const-wide v8, 0x4052c00000000000L    # 75.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmj;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;->zzc:Lcom/google/common/base/Joiner;

    iget-object v7, v7, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v7, Lcom/google/mlkit/vision/barcode/internal/zzi;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    new-instance v9, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-direct {v9}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>()V

    iget-boolean v7, v7, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_3

    :cond_3
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_3
    iput-object v7, v9, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    invoke-direct {v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v10, 0x7fffffff

    and-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zzb:Ljava/lang/Object;

    iput-object v5, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zza:Ljava/lang/Object;

    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zzc:Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeb;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzan;)V

    iput-object v5, v9, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    new-instance v5, Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 v6, 0x0

    invoke-direct {v5, v9, v6}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zze(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method
