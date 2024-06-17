.class public abstract Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "SourceFile"


# instance fields
.field public final broadcastReceiver:Lcom/motorola/camera/SecureCamera$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    new-instance p1, Lcom/motorola/camera/SecureCamera$1;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->broadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method public final startTracking()V
    .locals 4

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTrackerKt;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": registering receiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->broadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final stopTracking()V
    .locals 4

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTrackerKt;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": unregistering receiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->broadcastReceiver:Lcom/motorola/camera/SecureCamera$1;

    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
