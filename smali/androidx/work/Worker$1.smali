.class public final Landroidx/work/Worker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;)V
    .locals 1

    .line 1
    const/16 v0, 0x19

    iput v0, p0, Landroidx/work/Worker$1;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Landroidx/work/Worker$1;->$r8$classId:I

    const-string v0, "shutterBtn"

    .line 2
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, Landroidx/work/Worker$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private run$com$motorola$camera$service$CameraForegroundServiceManager$SaveSessionPendingJobsRunnable()V
    .locals 7

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object v2, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    sget-object v6, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object v6, v6, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsJobHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iput-object v1, v3, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private run$com$motorola$camera$ui$UIManager$1()V
    .locals 2

    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/UIManager;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    iget p0, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method


# virtual methods
.method public final checkUpdatedTable()Lkotlin/collections/builders/SetBuilder;
    .locals 4

    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/InvalidationTracker;

    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    iget-object v0, v0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/ExceptionsKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    invoke-virtual {v1}, Lkotlin/collections/builders/SetBuilder;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/InvalidationTracker;

    iget-object v0, v0, Landroidx/room/InvalidationTracker;->cleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    const-string v2, "Required value was null."

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/InvalidationTracker;

    iget-object p0, p0, Landroidx/room/InvalidationTracker;->cleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final run()V
    .locals 15

    iget v0, p0, Landroidx/work/Worker$1;->$r8$classId:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1a

    :pswitch_0
    invoke-direct {p0}, Landroidx/work/Worker$1;->run$com$motorola$camera$ui$UIManager$1()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroidx/work/Worker$1;->run$com$motorola$camera$service$CameraForegroundServiceManager$SaveSessionPendingJobsRunnable()V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "keytag"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyvalue"

    iget-wide v6, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "HAL_OPEN"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CAMERA_OPEN_TASK_RUNTIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ON_CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "STARTUP_PREVIEW_FRAME_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "START_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "START_TO_HAL_OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TOTAL_STARTUP_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TOTAL_COLD_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TOTAL_STARTUP_W_CAF_O"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "coldstart"

    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mColdStart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v1, "coldstart"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "mode"

    iget v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mModeSetting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hdr"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mHdrSetting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flash"

    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mFlashSetting:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "focus"

    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mTtfSetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "panorama"

    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mPanoramaSetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "keytype"

    const-string v2, "KPI"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taglevel"

    sget-object v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiTagLevelMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "parenttag"

    sget-object v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiParentTagMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "camera"

    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/MeasureKpi$KPIMeasurementClass;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    const-string v1, "Error inserting data:"

    const-string v2, "keytag = \'"

    const-string v6, "Exception getting DB connection:"

    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    if-eqz v7, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v7, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v7, :cond_5

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_5
    :try_start_2
    const-string v6, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "keytag"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v7, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "events"

    sget-object v9, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->INSERTQUERY_COLUMNS:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "timestamp ASC"

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    const-string v6, "_id=?"

    invoke-virtual {v4, v5, v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    invoke-virtual {v4, v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz v2, :cond_8

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v0
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception v0

    :try_start_8
    const-string v2, "InstrumentReportDBAccessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, "InstrumentReportDBAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_8
    :goto_5
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_3
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-nez v0, :cond_9

    const-string v0, "Video session data is null"

    goto :goto_6

    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    iget-object v4, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mNextCaptureVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-nez v4, :cond_a

    const-string v0, "Next video data is null"

    goto :goto_6

    :cond_a
    iput-object v3, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mNextCaptureVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-lez p0, :cond_b

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    iget-object p0, v4, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iput-wide v5, p0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    :cond_b
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f120127

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_7

    :catch_2
    const-string v0, "Error trying to finish last video file"

    :goto_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v1, "Stopped recording: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStates"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f120156

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDER_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_7
    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/WorkContinuation;

    invoke-virtual {p0}, Landroidx/work/WorkContinuation;->query()V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, L_COROUTINE/_BOUNDARY;

    invoke-virtual {p0}, L_COROUTINE/_BOUNDARY;->query()V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->numPendingJobs()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->Companion:Lcom/motorola/camera/settings/CacheBehavior;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CacheBehavior;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobMgrService: WatchDog triggered - killing JMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_a
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->serviceHandle:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/background/service/jms/JobMgrService;->stopSelf(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    goto :goto_8

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c
    :goto_8
    return-void

    :pswitch_7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    const-string v1, "ss"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "LOADED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {v0}, Lcom/motorola/camera/CountryDetector;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    const-class p0, Lcom/motorola/camera/CountryDetector;

    monitor-enter p0

    :try_start_b
    const-string v1, "com.motorola.camera_preferences"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.motorola.camera.country_iso"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    monitor-exit p0

    if-eqz v1, :cond_d

    invoke-static {v0, v5}, Lcom/motorola/camera/SimStateReceiver;->enableReceiver(Landroid/content/Context;Z)V

    goto :goto_9

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    :goto_9
    return-void

    :pswitch_8
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_9
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/zzu;

    iput-boolean v5, p0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzu;->continueSettlingToState(I)V

    goto :goto_a

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    iget p0, p0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :cond_f
    :goto_a
    return-void

    :pswitch_a
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPath;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Ljava/lang/Object;I)V

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    return-void

    :pswitch_b
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-boolean v5, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    return-void

    :pswitch_c
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    return-void

    :pswitch_d
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/InvalidationTracker;

    iget-object v0, v0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->readWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    const-string v1, "readWriteLock.readLock()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_c
    iget-object v1, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/room/InvalidationTracker;

    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->ensureInitialization$room_runtime_release()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_b

    :cond_10
    iget-object v1, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/room/InvalidationTracker;

    iget-object v1, v1, Landroidx/room/InvalidationTracker;->pendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_b

    :cond_11
    iget-object v1, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/room/InvalidationTracker;

    iget-object v1, v1, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v1, :cond_12

    :goto_b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/InvalidationTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_10

    :cond_12
    :try_start_d
    iget-object v1, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/room/InvalidationTracker;

    iget-object v1, v1, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    invoke-virtual {p0}, Landroidx/work/Worker$1;->checkUpdatedTable()Lkotlin/collections/builders/SetBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    goto :goto_e

    :catchall_5
    move-exception v2

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v1

    goto :goto_11

    :catch_3
    move-exception v1

    :try_start_10
    const-string v2, "ROOM"

    const-string v3, "Cannot run invalidation tracker. Is the db closed?"

    :goto_c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_4
    move-exception v1

    const-string v2, "ROOM"

    const-string v3, "Cannot run invalidation tracker. Is the db closed?"

    goto :goto_c

    :goto_d
    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_e
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/InvalidationTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_14

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/InvalidationTracker;

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->observerMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    :try_start_11
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->observerMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    move-object v1, p0

    check-cast v1, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/InvalidationTracker$ObserverWrapper;

    invoke-virtual {v1, v2}, Landroidx/room/InvalidationTracker$ObserverWrapper;->notifyByTableInvalidStatus$room_runtime_release(Ljava/util/Set;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_f

    :cond_13
    monitor-exit v0

    goto :goto_10

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_14
    :goto_10
    return-void

    :goto_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/room/InvalidationTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :pswitch_e
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    return-void

    :pswitch_f
    monitor-enter p0

    :try_start_12
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v0

    :pswitch_10
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :pswitch_11
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->scheduleShowSoftInputInner()V

    return-void

    :pswitch_12
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;

    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    :goto_12
    if-ge v5, v1, :cond_16

    aget-object v2, v0, v5

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    iget-object v6, v2, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v6, :cond_15

    iget-object v7, v2, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v6, v7}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_16
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/Extractor;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    iput-object v3, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    :cond_17
    iput-object v3, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    return-void

    :pswitch_13
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LiveData;

    iget-object v0, v0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveData;

    iget-object v1, v1, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/LiveData;

    sget-object v3, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_9
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw p0

    :pswitch_14
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    throw v3

    :pswitch_15
    monitor-enter p0

    :try_start_15
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iput-boolean v5, v0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :cond_18
    :goto_13
    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_19

    instance-of v1, v0, Landroidx/databinding/WeakListener;

    if-eqz v1, :cond_18

    check-cast v0, Landroidx/databinding/WeakListener;

    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->unregister()Z

    goto :goto_13

    :cond_19
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    sget-object v1, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroidx/databinding/ViewDataBinding$6;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_14

    :cond_1a
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_14

    :cond_1b
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_14

    :cond_1c
    iput-boolean v4, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    iput-boolean v5, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    :goto_14
    return-void

    :catchall_a
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    throw v0

    :pswitch_16
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, v5}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    return-void

    :pswitch_17
    iget-object v0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/ListViewAutoScrollHelper;

    iget-boolean v3, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    if-nez v3, :cond_1d

    goto/16 :goto_17

    :cond_1d
    iget-boolean v3, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    if-eqz v3, :cond_1e

    iput-boolean v5, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    iget-object v3, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v8, -0x1

    iput-wide v8, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iput-wide v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    :cond_1e
    iget-object v3, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    iget-wide v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v6, v6, v1

    if-lez v6, :cond_1f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v10, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_1f

    goto :goto_15

    :cond_1f
    move v4, v5

    :goto_15
    if-nez v4, :cond_23

    invoke-virtual {v0}, Landroidx/core/widget/ListViewAutoScrollHelper;->shouldAnimate()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_16

    :cond_20
    iget-boolean v4, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    if-eqz v4, :cond_21

    iput-boolean v5, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v6, v8

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v5, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$androidx$core$widget$AutoScrollHelper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_21
    iget-wide v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    cmp-long v1, v4, v1

    if-eqz v1, :cond_22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v4

    const/high16 v5, -0x3f800000    # -4.0f

    mul-float/2addr v5, v4

    mul-float/2addr v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    iget-wide v5, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v5, v1, v5

    iput-wide v1, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v1, v5

    mul-float/2addr v1, v4

    iget v2, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-static {v2, v1}, Landroidx/core/widget/ListViewCompat$Api19Impl;->scrollListBy(Landroid/widget/ListView;I)V

    iget-object v0, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$androidx$core$widget$AutoScrollHelper:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_22
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot compute scroll delta before calling start()"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_16
    iput-boolean v5, v0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    :goto_17
    return-void

    :pswitch_18
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_24

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_24
    return-void

    :pswitch_19
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/DropDownListView;

    iput-object v3, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/work/Worker$1;

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    return-void

    :pswitch_1a
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    invoke-virtual {p0, v4}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_1b
    :try_start_17
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->access$001(Landroidx/activity/ComponentActivity;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_5

    goto :goto_18

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_18
    return-void

    :cond_25
    throw p0

    :pswitch_1c
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    :try_start_18
    move-object v0, p0

    check-cast v0, Landroidx/work/Worker;

    invoke-virtual {v0}, Landroidx/work/Worker;->doWork()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/work/Worker;

    iget-object v1, v1, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    goto :goto_19

    :catchall_b
    move-exception v0

    check-cast p0, Landroidx/work/Worker;

    iget-object p0, p0, Landroidx/work/Worker;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_19
    return-void

    :goto_1a
    iget-object p0, p0, Landroidx/work/Worker$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_DISABLED:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    if-ne v0, v1, :cond_26

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    :cond_26
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_27
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
