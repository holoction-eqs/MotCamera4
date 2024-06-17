.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcx;


# instance fields
.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

.field public final zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field public final zzg:Lcom/google/android/gms/tasks/zzw;

.field public final zzh:Lcom/google/android/gms/tasks/zzw;

.field public final zzi:Ljava/lang/String;

.field public final zzj:I

.field public final zzk:Ljava/util/HashMap;

.field public final zzl:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcx;-><init>([Ljava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcx;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzre;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzk:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzl:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-static {}, Lkotlin/UByte$Companion;->zza()V

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpj;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpj;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzg:Lcom/google/android/gms/tasks/zzw;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpk;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpk;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;I)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzh:Lcom/google/android/gms/tasks/zzw;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcx;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzau;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzj:I

    return-void
.end method

.method public static zza(Ljava/util/ArrayList;D)J
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v2

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final zze(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v8, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Landroidx/work/impl/utils/WorkProgressUpdater$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v8}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;J)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzk:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;->zza()Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zze(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Ljava/lang/String;)V

    return-void
.end method

.method public final zzj()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzg:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;J)Z
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzk:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr p2, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
