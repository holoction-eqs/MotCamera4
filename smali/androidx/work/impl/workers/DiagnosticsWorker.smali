.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/impl/workers/DiagnosticsWorker;",
        "Landroidx/work/Worker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "parameters",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 75

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    const-string v1, "workManager.workDatabase"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workNameDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/WorkQuery$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    const-string v7, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    invoke-static {v6, v7}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v7

    invoke-virtual {v7, v6, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v4, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    const/4 v5, 0x0

    invoke-static {v4, v7, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v8, "id"

    invoke-static {v4, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "state"

    invoke-static {v4, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "worker_class_name"

    invoke-static {v4, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "input_merger_class_name"

    invoke-static {v4, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "input"

    invoke-static {v4, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "output"

    invoke-static {v4, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "initial_delay"

    invoke-static {v4, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "interval_duration"

    invoke-static {v4, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "flex_duration"

    invoke-static {v4, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "run_attempt_count"

    invoke-static {v4, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v16, v0

    const-string v0, "backoff_policy"

    invoke-static {v4, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v17, v2

    const-string v2, "backoff_delay_duration"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v18, v3

    const-string v3, "last_enqueue_time"

    invoke-static {v4, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v19, v1

    const-string v1, "minimum_retention_duration"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v7

    :try_start_1
    const-string v7, "schedule_requested_at"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v21, v7

    const-string v7, "run_in_foreground"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v22, v7

    const-string v7, "out_of_quota_policy"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v23, v7

    const-string v7, "period_count"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v24, v7

    const-string v7, "generation"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v25, v7

    const-string v7, "required_network_type"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v26, v7

    const-string v7, "requires_charging"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v27, v7

    const-string v7, "requires_device_idle"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v28, v7

    const-string v7, "requires_battery_not_low"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v29, v7

    const-string v7, "requires_storage_not_low"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v30, v7

    const-string v7, "trigger_content_update_delay"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v31, v7

    const-string v7, "trigger_max_content_delay"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v32, v7

    const-string v7, "content_uri_triggers"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    move/from16 v33, v7

    new-instance v7, Ljava/util/ArrayList;

    move/from16 v34, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v35, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v37, v35

    goto :goto_1

    :cond_0
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v37, v1

    :goto_1
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v38

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v39, v35

    goto :goto_2

    :cond_1
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v39, v1

    :goto_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v40, v35

    goto :goto_3

    :cond_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v40, v1

    :goto_3
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, v35

    goto :goto_4

    :cond_3
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v35

    goto :goto_5

    :cond_4
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v42

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)I

    move-result v51

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v1, v34

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v34, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_5

    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v60, 0x1

    goto :goto_6

    :cond_5
    move/from16 v22, v0

    move/from16 v0, v23

    const/16 v60, 0x0

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)I

    move-result v61

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)I

    move-result v65

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_6

    move/from16 v27, v0

    move/from16 v0, v28

    const/16 v66, 0x1

    goto :goto_7

    :cond_6
    move/from16 v27, v0

    move/from16 v0, v28

    const/16 v66, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_7

    move/from16 v28, v0

    move/from16 v0, v29

    const/16 v67, 0x1

    goto :goto_8

    :cond_7
    move/from16 v28, v0

    move/from16 v0, v29

    const/16 v67, 0x0

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_8

    move/from16 v29, v0

    move/from16 v0, v30

    const/16 v68, 0x1

    goto :goto_9

    :cond_8
    move/from16 v29, v0

    move/from16 v0, v30

    const/16 v68, 0x0

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_9

    move/from16 v30, v0

    move/from16 v0, v31

    const/16 v69, 0x1

    goto :goto_a

    :cond_9
    move/from16 v30, v0

    move/from16 v0, v31

    const/16 v69, 0x0

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v70

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v72

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_a

    goto :goto_b

    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    :goto_b
    invoke-static/range {v35 .. v35}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    move-result-object v74

    new-instance v49, Landroidx/work/Constraints;

    move-object/from16 v64, v49

    invoke-direct/range {v64 .. v74}, Landroidx/work/Constraints;-><init>(IZZZZJJLjava/util/Set;)V

    move/from16 v33, v0

    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v36, v0

    invoke-direct/range {v36 .. v63}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v34

    move/from16 v34, v1

    goto/16 :goto_0

    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getRunningWork()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getAllEligibleWorkSpecsForScheduling()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_c

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->TAG:Ljava/lang/String;

    const-string v4, "Recently completed work:\n\n"

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    move-object/from16 v6, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-static {v4, v5, v6, v7}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Lcom/motorola/camera/CameraKpi;Landroidx/core/view/MenuHostHelper;Landroidx/work/WorkQuery$Builder;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_c
    move-object/from16 v6, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->TAG:Ljava/lang/String;

    const-string v7, "Running work:\n\n"

    invoke-virtual {v2, v3, v7}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v2

    invoke-static {v4, v5, v6, v0}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Lcom/motorola/camera/CameraKpi;Landroidx/core/view/MenuHostHelper;Landroidx/work/WorkQuery$Builder;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->TAG:Ljava/lang/String;

    const-string v3, "Enqueued work:\n\n"

    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    invoke-static {v4, v5, v6, v1}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Lcom/motorola/camera/CameraKpi;Landroidx/core/view/MenuHostHelper;Landroidx/work/WorkQuery$Builder;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/work/Logger$LogcatLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    new-instance v0, Landroidx/work/ListenableWorker$Result$Success;

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/ListenableWorker$Result$Success;-><init>(Landroidx/work/Data;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v20, v7

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method
