.class public final Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;
.super Landroidx/work/multiprocess/RemoteCallback;
.source "SourceFile"


# instance fields
.field public final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteCallback;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    return-void
.end method


# virtual methods
.method public final onRequestCompleted()V
    .locals 4

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionRemoteCallback;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTracker:Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    iget-wide v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
