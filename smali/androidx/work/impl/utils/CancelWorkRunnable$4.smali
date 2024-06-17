.class public final Landroidx/work/impl/utils/CancelWorkRunnable$4;
.super Landroidx/work/impl/utils/CancelWorkRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$4;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-direct {p0}, Landroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runInternal()V
    .locals 5

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$4;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getAllUnfinishedWork()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroidx/work/impl/utils/CancelWorkRunnable;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Landroidx/work/impl/model/Preference;

    const-string v4, "last_cancel_all_time_ms"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->preferenceDao()Lcom/motorola/camera/device/CameraService;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/motorola/camera/device/CameraService;->insertPreference(Landroidx/work/impl/model/Preference;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
.end method
