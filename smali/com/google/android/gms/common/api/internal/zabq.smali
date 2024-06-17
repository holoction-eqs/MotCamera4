.class public final Lcom/google/android/gms/common/api/internal/zabq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final zab:Ljava/util/LinkedList;

.field public final zac:Lcom/google/android/gms/common/internal/GmsClient;

.field public final zad:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final zae:Lcom/google/android/gms/common/api/internal/zaad;

.field public final zaf:Ljava/util/HashSet;

.field public final zag:Ljava/util/HashMap;

.field public final zah:I

.field public final zai:Lcom/google/android/gms/common/api/internal/zact;

.field public zaj:Z

.field public final zak:Ljava/util/ArrayList;

.field public zal:Lcom/google/android/gms/common/ConnectionResult;

.field public zam:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 10

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaf:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zak:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zal:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->createClientSettingsBuilder()Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/DropShadowEffect;->build()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v6

    iget-object v2, p2, Lcom/google/android/gms/common/api/GoogleApi;->zad:Landroidx/core/view/MenuHostHelper;

    iget-object v2, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;

    invoke-static {v3}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p2, Lcom/google/android/gms/common/api/GoogleApi;->zab:Landroid/content/Context;

    iget-object v7, p2, Lcom/google/android/gms/common/api/GoogleApi;->zae:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v8, p0

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/GmsClient;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/common/api/GoogleApi;->zac:Ljava/lang/String;

    if-eqz v3, :cond_0

    iput-object v3, v2, Lcom/google/android/gms/common/internal/GmsClient;->zzA:Ljava/lang/String;

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    iget-object v3, p2, Lcom/google/android/gms/common/api/GoogleApi;->zaf:Lcom/google/android/gms/common/api/internal/ApiKey;

    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaad;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/api/internal/zaad;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/zabq;->zae:Lcom/google/android/gms/common/api/internal/zaad;

    iget v1, p2, Lcom/google/android/gms/common/api/GoogleApi;->zah:I

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zah:I

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zact;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->createClientSettingsBuilder()Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/airbnb/lottie/parser/DropShadowEffect;->build()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zact;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/base/zau;Lcom/google/android/gms/common/internal/ClientSettings;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zai:Lcom/google/android/gms/common/api/internal/zact;

    return-void

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zai:Lcom/google/android/gms/common/api/internal/zact;

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaG()V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacq;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/common/api/internal/zacq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaH(I)V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/common/api/internal/zabn;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zaB([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzb:[Lcom/google/android/gms/common/Feature;

    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    new-array p0, v1, [Lcom/google/android/gms/common/Feature;

    :cond_2
    array-length v2, p0

    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, p0, v4

    iget-object v6, v5, Lcom/google/android/gms/common/Feature;->zza:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    array-length p0, p1

    :goto_2
    if-ge v1, p0, :cond_6

    aget-object v2, p1, v1

    iget-object v4, v2, Lcom/google/android/gms/common/Feature;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v2

    :cond_6
    :goto_4
    return-object v0
.end method

.method public final zaC(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaf:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zza:Lcom/google/android/gms/common/internal/zzu;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to connect when checking package"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final zaD(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zabq;->zaE(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    return-void
.end method

.method public final zaE(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zac;

    if-eqz p3, :cond_3

    iget v1, v0, Lcom/google/android/gms/common/api/internal/zac;->zac:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zac;->zad(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/zac;->zae(Ljava/lang/RuntimeException;)V

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Status XOR exception should be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zaF()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zac;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/GmsClient;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/zabq;->zaL(Lcom/google/android/gms/common/api/internal/zac;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zaG()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zal:Lcom/google/android/gms/common/ConnectionResult;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabq;->zaC(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaF()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaI()V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaci;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zaH(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zal:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zae:Lcom/google/android/gms/common/api/internal/zaad;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    iget-object v2, v2, Lcom/google/android/gms/common/internal/GmsClient;->zzk:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    const-string p1, " due to service disconnection."

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    const-string p1, " due to dead object exception."

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/api/internal/zaad;->zah(ZLcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/airbnb/lottie/model/MutablePair;

    iget-object p1, p1, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaci;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zaI()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 v2, 0xc

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-wide v2, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final zaL(Lcom/google/android/gms/common/api/internal/zac;)Z
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/zac;

    const-string v1, "DeadObjectException thrown while running ApiCallRunner."

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabq;->zae:Lcom/google/android/gms/common/api/internal/zaad;

    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/common/api/internal/zac;->zag(Lcom/google/android/gms/common/api/internal/zaad;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zac;->zaf(Lcom/google/android/gms/common/api/internal/zabq;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zabq;->onConnectionSuspended(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zac;->zab(Lcom/google/android/gms/common/api/internal/zabq;)[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabq;->zaB([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabq;->zae:Lcom/google/android/gms/common/api/internal/zaad;

    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/common/api/internal/zac;->zag(Lcom/google/android/gms/common/api/internal/zaad;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zac;->zaf(Lcom/google/android/gms/common/api/internal/zabq;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/zabq;->onConnectionSuspended(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect(Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/common/Feature;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not execute call because it requires feature ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GoogleApiManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/internal/zabq;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabs;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/internal/zabs;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zak:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/16 v3, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zak:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabs;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zak:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaM(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zah:I

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaG(Lcom/google/android/gms/common/ConnectionResult;I)Z

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zac;->zae(Ljava/lang/RuntimeException;)V

    return v2
.end method

.method public final zaM(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    sget-object p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zao()V
    .locals 13

    const-string v0, "The service for "

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v2}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/GmsClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/GmsClient;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0xa

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v5, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/airbnb/lottie/model/MutablePair;->zab(Landroid/content/Context;Lcom/google/android/gms/common/internal/GmsClient;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not available: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GoogleApiManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/internal/GmsClient;Lcom/google/android/gms/common/api/internal/ApiKey;)V

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zai:Lcom/google/android/gms/common/api/internal/zact;

    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :cond_2
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v9, v1, Lcom/google/android/gms/common/api/internal/zact;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object v4, v9, Lcom/google/android/gms/common/internal/ClientSettings;->zaj:Ljava/lang/Integer;

    iget-object v6, v1, Lcom/google/android/gms/common/api/internal/zact;->zad:Lcom/google/android/gms/signin/zaa;

    iget-object v7, v1, Lcom/google/android/gms/common/api/internal/zact;->zab:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/zact;->zac:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v10, v9, Lcom/google/android/gms/common/internal/ClientSettings;->zai:Lcom/google/android/gms/signin/SignInOptions;

    move-object v11, v1

    move-object v12, v1

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/signin/zaa;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/GmsClient;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zabu;

    iget-object v6, v1, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {v1}, Lcom/google/android/gms/signin/zae;->zab()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v6, Lcom/google/android/gms/common/api/internal/zacq;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/google/android/gms/common/api/internal/zacq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    :try_start_1
    iput-object v0, v2, Lcom/google/android/gms/common/internal/GmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/common/internal/GmsClient;->zzp(ILandroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final zap(Lcom/google/android/gms/common/api/internal/zac;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClient;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaL(Lcom/google/android/gms/common/api/internal/zac;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zaI()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zal:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/common/ConnectionResult;->zzc:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabq;->zao()V

    return-void
.end method

.method public final zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zai:Lcom/google/android/gms/common/api/internal/zact;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zal:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v1, v1, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaC(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    instance-of v1, v1, Lcom/google/android/gms/common/internal/service/zap;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Z

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    sget-object p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaD(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zal:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaE(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-boolean p2, p2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaH(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/android/gms/common/api/internal/zabq;->zaE(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaM(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zah:I

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaG(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p2

    if-nez p2, :cond_9

    iget p2, p1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    :cond_7
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaj:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    const/16 p2, 0x9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaH(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaD(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    return-void

    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaH(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zaD(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zav()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabq;->zaD(Lcom/google/android/gms/common/api/Status;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zae:Lcom/google/android/gms/common/api/internal/zaad;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/common/api/internal/zaad;->zah(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v3, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lcom/google/android/gms/common/api/internal/zaf;

    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/google/android/gms/common/api/internal/zaf;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v5}, Lcom/google/android/gms/common/api/internal/zabq;->zap(Lcom/google/android/gms/common/api/internal/zac;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabq;->zaC(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/GmsClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/zabp;-><init>(Lcom/google/android/gms/common/api/internal/zabq;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zacq;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/internal/zacq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
