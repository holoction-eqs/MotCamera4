.class public final synthetic Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/WorkDatabase;

.field public final synthetic f$1:Landroidx/work/impl/model/WorkSpec;

.field public final synthetic f$2:Landroidx/work/impl/model/WorkSpec;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/Set;

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$1:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$2:Landroidx/work/impl/model/WorkSpec;

    iput-object p4, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$5:Ljava/util/Set;

    iput-boolean p7, p0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/WorkDatabase;

    const-string v2, "$workDatabase"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$1:Landroidx/work/impl/model/WorkSpec;

    const-string v2, "$newWorkSpec"

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$2:Landroidx/work/impl/model/WorkSpec;

    const-string v4, "$oldWorkSpec"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$schedulers"

    iget-object v5, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    invoke-static {v5, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    const-string v4, "$workSpecId"

    invoke-static {v13, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$5:Ljava/util/Set;

    const-string v4, "$tags"

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v15

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v12

    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iget v8, v2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget-wide v9, v2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    iget v2, v2, Landroidx/work/impl/model/WorkSpec;->generation:I

    const/4 v11, 0x1

    add-int/2addr v2, v11

    const v16, 0x7dbfd

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v11, v2

    move-object v2, v12

    move/from16 v12, v16

    invoke-static/range {v3 .. v12}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJII)Landroidx/work/impl/model/WorkSpec;

    move-result-object v3

    iget-object v4, v15, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v6, v15, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Ljava/lang/Object;

    check-cast v6, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v6, v3}, Landroidx/room/EntityInsertionAdapter;->handle(Ljava/lang/Object;)I

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object v3, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v3, Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v3, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v3, Landroidx/collection/MapCollections;

    invoke-virtual {v3}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    iget-object v4, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_1
    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v4, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object v4, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/MapCollections;

    invoke-virtual {v4, v3}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    invoke-virtual {v2, v13, v14}, Landroidx/core/view/MenuHostHelper;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    iget-boolean v0, v0, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;->f$6:Z

    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    invoke-virtual {v15, v2, v3, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->markWorkSpecScheduled(JLjava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/WorkQuery;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroidx/work/WorkQuery;->delete(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v2, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object v1, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1, v3}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw v0
.end method
