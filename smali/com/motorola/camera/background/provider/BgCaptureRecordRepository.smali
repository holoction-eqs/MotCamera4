.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDao:Lcom/google/android/material/datepicker/CalendarStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    sget-object v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->Companion:L_COROUTINE/ArtificialStackFrames;

    sget-object v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    const-string v2, "bgCaptureRecord_table.db"

    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;

    sput-object p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->captureRecordDao()Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/google/android/material/datepicker/CalendarStyle;

    return-void
.end method


# virtual methods
.method public final selectAll()Ljava/util/ArrayList;
    .locals 47

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/google/android/material/datepicker/CalendarStyle;

    if-eqz v1, :cond_5

    const-string v2, "SELECT * FROM bgCaptureRecord_table"

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-static {v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v4, "id"

    invoke-static {v1, v4}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "mediaStoreUri"

    invoke-static {v1, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ts"

    invoke-static {v1, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "expirationTime"

    invoke-static {v1, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "clientId"

    invoke-static {v1, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sourceId"

    invoke-static {v1, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "targetId"

    invoke-static {v1, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "jobNum"

    invoke-static {v1, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "taskNum"

    invoke-static {v1, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "priority"

    invoke-static {v1, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "useFifo"

    invoke-static {v1, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    invoke-static {v1, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "progressLevel"

    invoke-static {v1, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "progressMax"

    invoke-static {v1, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "thumbWidth"

    invoke-static {v1, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "thumbHeight"

    invoke-static {v1, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "thumbnailPath"

    invoke-static {v1, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "uuid"

    invoke-static {v1, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v21, v3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v25, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v38, v3

    goto :goto_2

    :cond_1
    const/16 v38, 0x0

    :goto_2
    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v39, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    :goto_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v3, v21

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    move/from16 v21, v0

    move/from16 v0, v17

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_3

    move/from16 v19, v0

    move/from16 v0, v20

    const/16 v44, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v44, v19

    move/from16 v19, v0

    move/from16 v0, v20

    :goto_4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    move/from16 v20, v0

    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v46}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;IIIILjava/lang/String;J)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v21

    move/from16 v21, v3

    goto/16 :goto_0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    move-object v0, v2

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method
