.class public final Lcom/google/android/gms/internal/mlkit_common/zzpn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzbc;


# instance fields
.field public final zzi:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.android.gms.vision.barcode"

    const-string v1, "optional-module-barcode"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzg(I[Ljava/lang/Object;Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/google/android/gms/internal/mlkit_common/zzbc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    const-class v0, L_COROUTINE/ArtificialStackFrames;

    monitor-enter v0

    :try_start_0
    sget-object v1, L_COROUTINE/ArtificialStackFrames;->zza:L_COROUTINE/ArtificialStackFrames;

    if-nez v1, :cond_0

    new-instance v1, L_COROUTINE/ArtificialStackFrames;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, L_COROUTINE/ArtificialStackFrames;-><init>(ILjava/lang/Object;)V

    sput-object v1, L_COROUTINE/ArtificialStackFrames;->zza:L_COROUTINE/ArtificialStackFrames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpj;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpk;

    invoke-direct {v0, p2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpk;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbc;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzau;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzbc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
