.class public final Landroidx/work/impl/foreground/SystemForegroundDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/constraints/WorkConstraintsCallback;
.implements Landroidx/work/impl/ExecutionListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

.field public final mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;

.field public mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

.field public final mForegroundInfoById:Ljava/util/LinkedHashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public final mTrackedWorkSpecs:Ljava/util/HashSet;

.field public final mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

.field public final mWorkSpecById:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, p1, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/HashMap;

    new-instance v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;

    iget-object v1, p1, Landroidx/work/impl/WorkManagerImpl;->mTrackers:Landroidx/work/WorkQuery$Builder;

    invoke-direct {v0, v1, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;-><init>(Landroidx/work/WorkQuery$Builder;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;

    iget-object p1, p1, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    invoke-virtual {p1, p0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    return-void
.end method

.method public static createNotifyIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget p0, p2, Landroidx/work/ForegroundInfo;->mNotificationId:I

    const-string v1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    iget v1, p2, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    iget-object p2, p2, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p1, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    const-string p2, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    iget p1, p1, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createStartForegroundIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p1, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    iget p1, p1, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p0, p2, Landroidx/work/ForegroundInfo;->mNotificationId:I

    const-string p1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    iget p1, p2, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    iget-object p1, p2, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final onAllConstraintsMet(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final onAllConstraintsNotMet(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    const-string v3, "Constraints unmet for WorkSpec "

    invoke-static {v3, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    new-instance v3, Landroidx/work/impl/utils/StopWorkRunnable;

    new-instance v4, Landroidx/work/impl/StartStopToken;

    invoke-direct {v4, v0}, Landroidx/work/impl/StartStopToken;-><init>(Landroidx/work/impl/model/WorkGenerationalId;)V

    const/4 v0, 0x1

    invoke-direct {v3, v1, v4, v0}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/impl/StartStopToken;Z)V

    invoke-virtual {v2, v3}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 8

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Landroidx/work/impl/constraints/WorkConstraintsTrackerImpl;->replace(Ljava/lang/Iterable;)V

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/ForegroundInfo;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {p1, v0}, Landroidx/work/impl/model/WorkGenerationalId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mForegroundInfoById:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkGenerationalId;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCurrentForegroundId:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/ForegroundInfo;

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    iget v3, v0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    iget v4, v0, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    iget-object v5, v0, Landroidx/work/ForegroundInfo;->mNotification:Landroid/app/Notification;

    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v6, v2, Landroidx/work/impl/foreground/SystemForegroundService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/work/impl/foreground/SystemForegroundService$1;

    invoke-direct {v7, v2, v3, v5, v4}, Landroidx/work/impl/foreground/SystemForegroundService$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    iget v0, v0, Landroidx/work/ForegroundInfo;->mNotificationId:I

    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v3, v2, Landroidx/work/impl/foreground/SystemForegroundService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/gms/common/api/internal/zabn;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mCallback:Landroidx/work/impl/foreground/SystemForegroundDispatcher$Callback;

    if-eqz p2, :cond_4

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing Notification (id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p2, Landroidx/work/ForegroundInfo;->mNotificationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", workSpecId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notificationType: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroidx/work/ForegroundInfo;->mForegroundServiceType:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p2, Landroidx/work/ForegroundInfo;->mNotificationId:I

    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/internal/zabn;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
