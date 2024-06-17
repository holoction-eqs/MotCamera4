.class public final Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mOperation:Landroidx/work/impl/OperationImpl;

.field public final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;Landroidx/work/impl/OperationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-void
.end method

.method public static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    sget-object v2, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/WorkContinuationImpl;

    iget-boolean v6, v5, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    if-nez v6, :cond_0

    invoke-static {v5}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Already enqueued work ids ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    const-string v8, ", "

    invoke-static {v8, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v4, v3

    :cond_2
    invoke-static/range {p0 .. p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v8, v7, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    array-length v10, v1

    if-lez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_1
    sget-object v11, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    sget-object v12, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    sget-object v13, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-eqz v10, :cond_8

    array-length v14, v1

    move v15, v3

    move/from16 v17, v15

    move/from16 v18, v17

    const/16 v16, 0x1

    :goto_2
    if-ge v15, v14, :cond_9

    aget-object v3, v1, v15

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Prerequisite "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v21, v4

    goto/16 :goto_6

    :cond_4
    iget-object v3, v9, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-ne v3, v11, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    and-int v16, v16, v9

    if-ne v3, v13, :cond_6

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    if-ne v3, v12, :cond_7

    const/16 v17, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    :cond_9
    iget-object v2, v0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v9, 0x1

    xor-int/2addr v3, v9

    if-eqz v3, :cond_a

    if-nez v10, :cond_a

    const/4 v9, 0x1

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    sget-object v14, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eqz v9, :cond_1c

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1c

    const/4 v15, 0x3

    move/from16 v20, v10

    const/4 v10, 0x4

    move/from16 v21, v4

    iget v4, v0, Landroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:I

    if-eq v4, v15, :cond_10

    if-ne v4, v10, :cond_b

    goto :goto_8

    :cond_b
    const/4 v10, 0x2

    if-ne v4, v10, :cond_e

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-eq v10, v14, :cond_d

    sget-object v11, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_c

    :cond_d
    :goto_6
    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_15

    :cond_e
    new-instance v4, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    const/4 v10, 0x0

    invoke-direct {v4, v7, v2, v10}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    invoke-virtual {v4}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v14

    move/from16 v10, v20

    const/4 v9, 0x1

    const/4 v14, 0x0

    goto/16 :goto_10

    :cond_10
    :goto_8
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Lcom/airbnb/lottie/model/MutablePair;

    move-result-object v15

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v23, v9

    move-object/from16 v9, v20

    check-cast v9, Landroidx/work/impl/model/WorkSpec$IdAndState;

    move/from16 v24, v3

    iget-object v3, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v25, v7

    const-string v7, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v26, v14

    const/4 v14, 0x1

    invoke-static {v14, v7}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v7

    if-nez v3, :cond_11

    invoke-virtual {v7, v14}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_a

    :cond_11
    invoke-virtual {v7, v14, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_a
    iget-object v3, v15, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v3, v15, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/room/RoomDatabase;

    const/4 v14, 0x0

    invoke-static {v3, v7, v14}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v19, :cond_12

    const/16 v19, 0x1

    goto :goto_b

    :cond_12
    move/from16 v19, v14

    :goto_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Landroidx/room/RoomSQLiteQuery;->release()V

    if-nez v19, :cond_16

    iget-object v3, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    if-ne v3, v11, :cond_13

    const/4 v7, 0x1

    goto :goto_c

    :cond_13
    move v7, v14

    :goto_c
    and-int v7, v16, v7

    if-ne v3, v13, :cond_14

    const/16 v18, 0x1

    goto :goto_d

    :cond_14
    if-ne v3, v12, :cond_15

    const/16 v17, 0x1

    :cond_15
    :goto_d
    iget-object v3, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v7

    :cond_16
    move-object/from16 v9, v23

    move/from16 v3, v24

    move-object/from16 v7, v25

    move-object/from16 v14, v26

    goto :goto_9

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    :cond_17
    move/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v14

    const/4 v3, 0x4

    const/4 v14, 0x0

    if-ne v4, v3, :cond_1a

    if-nez v17, :cond_18

    if-eqz v18, :cond_1a

    :cond_18
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/work/impl/model/WorkSpec$IdAndState;

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move/from16 v17, v14

    move/from16 v18, v17

    :cond_1a
    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v3, v1

    if-lez v3, :cond_1b

    const/4 v10, 0x1

    goto :goto_f

    :cond_1b
    move v10, v14

    goto :goto_f

    :cond_1c
    move/from16 v24, v3

    move/from16 v21, v4

    move-object/from16 v25, v7

    move/from16 v20, v10

    move-object/from16 v26, v14

    const/4 v14, 0x0

    move/from16 v10, v20

    :goto_f
    move v9, v14

    :goto_10
    iget-object v3, v0, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/WorkRequest;

    iget-object v7, v4, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    if-eqz v10, :cond_1f

    if-nez v16, :cond_1f

    if-eqz v18, :cond_1d

    iput-object v13, v7, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_12

    :cond_1d
    if-eqz v17, :cond_1e

    iput-object v12, v7, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_12

    :cond_1e
    sget-object v11, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    iput-object v11, v7, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_12

    :cond_1f
    iput-wide v5, v7, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    :goto_12
    iget-object v11, v7, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object/from16 v15, v26

    if-ne v11, v15, :cond_20

    const/4 v9, 0x1

    :cond_20
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v11

    move-object/from16 v20, v3

    move-object/from16 v14, v25

    iget-object v3, v14, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    move-wide/from16 v22, v5

    const-string v5, "schedulers"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v11, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_1
    iget-object v6, v11, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Ljava/lang/Object;

    check-cast v6, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v6, v7}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    check-cast v3, Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz v10, :cond_21

    array-length v3, v1

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v3, :cond_21

    aget-object v6, v1, v5

    new-instance v7, Landroidx/work/impl/model/Dependency;

    invoke-virtual {v4}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v6}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Lcom/airbnb/lottie/model/MutablePair;

    move-result-object v6

    iget-object v11, v6, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v11, Landroidx/room/RoomDatabase;

    invoke-virtual {v11}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v11, v6, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v11, Landroidx/room/RoomDatabase;

    invoke-virtual {v11}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_2
    iget-object v11, v6, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v11, v7}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v7, Landroidx/room/RoomDatabase;

    invoke-virtual {v7}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v6, v6, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :catchall_1
    move-exception v0

    iget-object v1, v6, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :cond_21
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    invoke-virtual {v3, v5, v6}, Landroidx/core/view/MenuHostHelper;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    if-eqz v24, :cond_22

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->workNameDao()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    new-instance v5, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v4}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v2, v4}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v4, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_3
    iget-object v4, v3, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v4, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v4, v5}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v3, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v3, Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_14

    :catchall_2
    move-exception v0

    iget-object v1, v3, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :cond_22
    :goto_14
    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v3, v20

    move-wide/from16 v5, v22

    const/4 v14, 0x0

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0

    :cond_23
    move v3, v9

    const/4 v1, 0x1

    :goto_15
    iput-boolean v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    or-int v0, v21, v3

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    iget-object p0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    const-string v1, "WorkContinuation has cycles ("

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v3}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/HashSet;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    if-eqz p0, :cond_0

    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object p0, v2, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v1, v2, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v2, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    invoke-static {p0, v1, v2}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_0
    sget-object p0, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v0, p0}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    new-instance v1, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v1, p0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    :goto_0
    return-void
.end method
