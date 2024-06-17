.class public final Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "SourceFile"


# instance fields
.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance p1, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    invoke-direct {p1, p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    return-void
.end method


# virtual methods
.method public final getInitialState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/ConnectivityManager;)Landroidx/work/impl/constraints/NetworkState;

    move-result-object p0

    return-object p0
.end method

.method public final startTracking()V
    .locals 4

    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    invoke-static {v1, p0}, Landroidx/work/impl/utils/NetworkApi24;->registerDefaultNetworkCallbackCompat(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    :goto_0
    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final stopTracking()V
    .locals 4

    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    invoke-static {v1, p0}, Landroidx/work/impl/utils/NetworkApi21;->unregisterNetworkCallbackCompat(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    :goto_0
    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
