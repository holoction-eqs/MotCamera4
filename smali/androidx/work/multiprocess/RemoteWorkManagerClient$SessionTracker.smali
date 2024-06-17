.class public final Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SessionHandler"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-wide v0, v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionIndex:J

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v2, v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-wide v3, v3, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionIndex:J

    iget-object v5, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v5, v5, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    if-eqz v5, :cond_1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    const-string v3, "Unbinding service"

    invoke-virtual {v0, v1, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->TAG:Ljava/lang/String;

    const-string v1, "Binding died"

    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    iget-object p0, v5, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->cleanUp()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object p0

    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring request to unbind."

    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
