.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

.field public final synthetic zzc:Ljava/lang/Object;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/common/base/Joiner;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;JLcom/google/common/base/Joiner;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zzc:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zzd:J

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zze:Lcom/google/common/base/Joiner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzbe:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzl:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;-><init>()V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zzd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;->zza:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zzc:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "New Collection violated the Collection spec"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;J)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzk:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;->zze:Lcom/google/common/base/Joiner;

    invoke-direct {v3, v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Lcom/google/common/base/Joiner;)V

    invoke-virtual {v2, v3}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
