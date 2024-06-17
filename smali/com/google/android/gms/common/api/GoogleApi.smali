.class public abstract Lcom/google/android/gms/common/api/GoogleApi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final zab:Landroid/content/Context;

.field public final zac:Ljava/lang/String;

.field public final zad:Landroidx/core/view/MenuHostHelper;

.field public final zae:Lcom/google/android/gms/common/api/Api$ApiOptions;

.field public final zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final zah:I

.field public final zaj:Lkotlin/UByte$Companion;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/view/MenuHostHelper;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zab:Landroid/content/Context;

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "getAttributionTag"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zac:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zad:Landroidx/core/view/MenuHostHelper;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zae:Lcom/google/android/gms/common/api/Api$ApiOptions;

    new-instance v0, Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/ApiKey;-><init>(Landroidx/core/view/MenuHostHelper;Lcom/google/android/gms/common/api/Api$ApiOptions;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabv;

    iget-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zab:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zah:I

    iget-object p2, p4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->zaa:Lkotlin/UByte$Companion;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaj:Lkotlin/UByte$Companion;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context is not permitted."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createClientSettingsBuilder()Lcom/airbnb/lottie/parser/DropShadowEffect;
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/ArraySet;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/collection/ArraySet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/ArraySet;

    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zab:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    return-object v0
.end method

.method public final zae(ILcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/tasks/zzw;
    .locals 13

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v9, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-boolean v5, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v9, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz v5, :cond_5

    iget-object v6, v5, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    instance-of v7, v6, Lcom/google/android/gms/common/internal/GmsClient;

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v6, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    if-eqz v7, :cond_3

    move v7, v2

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/GmsClient;->isConnecting()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5, v6, v3}, Lcom/google/android/gms/common/api/internal/zacd;->zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/GmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_1
    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    iget v6, v5, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    add-int/2addr v6, v2

    iput v6, v5, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    goto :goto_2

    :cond_5
    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    :cond_6
    :goto_2
    new-instance v10, Lcom/google/android/gms/common/api/internal/zacd;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_3

    :cond_7
    move-wide v7, v5

    :goto_3
    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide v11, v1

    goto :goto_4

    :cond_8
    move-wide v11, v5

    :goto_4
    move-object v1, v10

    move-object v2, v9

    move-wide v5, v7

    move-wide v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/api/internal/zacd;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJ)V

    :goto_5
    if-eqz v1, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    iget-object v3, v9, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-direct {v4, v3}, Lcom/google/android/gms/common/api/internal/zabk;-><init>(Lcom/google/android/gms/internal/base/zau;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v3, v4, v1}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object v1, v2, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    :cond_9
    new-instance v1, Lcom/google/android/gms/common/api/internal/zag;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zaj:Lkotlin/UByte$Companion;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/google/android/gms/common/api/internal/zag;-><init>(ILcom/google/android/gms/common/internal/zzu;Lcom/google/android/gms/tasks/TaskCompletionSource;Lkotlin/UByte$Companion;)V

    iget-object p1, v9, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    new-instance p2, Lcom/google/android/gms/common/api/internal/zach;

    iget-object v2, v9, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {p2, v1, v2, p0}, Lcom/google/android/gms/common/api/internal/zach;-><init>(Lcom/google/android/gms/common/api/internal/zac;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-object p0
.end method
