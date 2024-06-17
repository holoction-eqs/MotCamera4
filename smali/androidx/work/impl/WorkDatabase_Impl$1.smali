.class public final Landroidx/work/impl/WorkDatabase_Impl$1;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/room/RoomDatabase;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;II)V
    .locals 0

    iput p3, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    iget p0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->$r8$classId:I

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "CREATE TABLE IF NOT EXISTS `fileData_table` (`id` INTEGER NOT NULL, `tag` INTEGER, `file_name` TEXT, `uri` TEXT, `ts` INTEGER, `MIME_type` TEXT, `format` TEXT, `time_out` INTEGER, `ref_count` INTEGER, `compression_type` TEXT, `encryption_type` TEXT, `mSize` INTEGER, `width` INTEGER, `height` INTEGER, `stride` INTEGER, PRIMARY KEY(`id`))"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'41277b012cb2d2018b09947c5a388aa5\')"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "CREATE TABLE IF NOT EXISTS `bgCaptureRecord_table` (`id` INTEGER NOT NULL, `mediaStoreUri` TEXT NOT NULL, `ts` INTEGER NOT NULL, `expirationTime` INTEGER NOT NULL, `clientId` INTEGER NOT NULL, `sourceId` INTEGER NOT NULL, `targetId` INTEGER NOT NULL, `jobNum` INTEGER NOT NULL, `taskNum` INTEGER NOT NULL, `priority` INTEGER NOT NULL, `useFifo` INTEGER NOT NULL, `comment` TEXT, `progressLevel` INTEGER NOT NULL, `progressMax` INTEGER NOT NULL, `thumbWidth` INTEGER NOT NULL, `thumbHeight` INTEGER NOT NULL, `thumbnailPath` TEXT, `uuid` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'e052e49918b985576d177a7071e0a3de\')"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'5181942b9ebc31ce68dacb56c16fd79f\')"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :goto_0
    const-string p0, "CREATE TABLE IF NOT EXISTS `transaction_table` (`id` INTEGER NOT NULL, `markForDelete` INTEGER NOT NULL, `ts` INTEGER NOT NULL, `clientId` INTEGER NOT NULL, `sourceId` INTEGER NOT NULL, `targetId` INTEGER NOT NULL, `jobNum` INTEGER NOT NULL, `taskNum` INTEGER NOT NULL, `priority` INTEGER NOT NULL, `useFifo` INTEGER NOT NULL, `comment` TEXT, `coProcId` INTEGER NOT NULL, `callerId` INTEGER NOT NULL, `msgType` INTEGER NOT NULL, `msg` TEXT, `returnCode` INTEGER NOT NULL, `iCallerId` INTEGER NOT NULL, `iMsgType` INTEGER NOT NULL, `iMsg` TEXT, `iReturnCode` INTEGER NOT NULL, `state` TEXT, `progressInd` INTEGER NOT NULL, `timeExpiration` INTEGER NOT NULL, `scheduled` INTEGER NOT NULL, `retryCount` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'374d2ffe666e5f85da87a5ef422c441d\')"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dropAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 2

    iget v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v0, "DROP TABLE IF EXISTS `fileData_table`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    const-string v0, "DROP TABLE IF EXISTS `bgCaptureRecord_table`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    sget p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->$r8$clinit:I

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_2
    const-string v0, "DROP TABLE IF EXISTS `Dependency`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkName`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `WorkProgress`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `Preference`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    sget p1, Landroidx/work/impl/WorkDatabase_Impl;->$r8$clinit:I

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    const-string v0, "DROP TABLE IF EXISTS `transaction_table`"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_3

    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 2

    iget p1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->$r8$classId:I

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    sget p1, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->$r8$clinit:I

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_2
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    sget p1, Landroidx/work/impl/WorkDatabase_Impl;->$r8$clinit:I

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    iget-object p1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_4
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 3

    iget v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    iput-object p1, v0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v2, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    iget-object v2, v2, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    sget v2, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;->$r8$clinit:I

    iput-object p1, v0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v2, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    iget-object v2, v2, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    iput-object p1, v0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    const-string v0, "PRAGMA foreign_keys = ON"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v2, v2, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    iput-object p1, v0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast v2, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    iget-object v2, v2, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostMigrate()V
    .locals 0

    return-void
.end method

.method public final onPreMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    iget p0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    return-void

    :goto_0
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/media3/common/FlagSet$Builder;
    .locals 60

    move-object/from16 v0, p1

    move-object/from16 v3, p0

    iget v3, v3, Landroidx/work/impl/WorkDatabase_Impl$1;->$r8$classId:I

    const-string v4, "comment"

    const-string v5, "useFifo"

    const-string v6, "priority"

    const-string v7, "taskNum"

    const-string v8, "jobNum"

    const-string v9, "targetId"

    const-string v10, "sourceId"

    const-string v11, "clientId"

    const-string v12, "tag"

    const-string v13, "state"

    const-string v14, "ts"

    const-string v15, "\n Found:\n"

    const/4 v1, 0x0

    const-string v2, "id"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const-string v8, "id"

    const-string v9, "INTEGER"

    const/4 v11, 0x1

    const/4 v6, 0x1

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "tag"

    const-string v26, "INTEGER"

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v32, "file_name"

    const-string v33, "TEXT"

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "file_name"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v32, "uri"

    const-string v33, "TEXT"

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "uri"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v32, "ts"

    const-string v33, "INTEGER"

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "MIME_type"

    const-string v26, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "MIME_type"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "format"

    const-string v26, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "format"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "time_out"

    const-string v26, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "time_out"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "ref_count"

    const-string v26, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "ref_count"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "compression_type"

    const-string v26, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "compression_type"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "encryption_type"

    const-string v26, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "encryption_type"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "mSize"

    const-string v26, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "mSize"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v25, "width"

    const-string v26, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "width"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "height"

    const-string v9, "INTEGER"

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "height"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v19, "stride"

    const-string v20, "INTEGER"

    move-object/from16 v16, v2

    move/from16 v22, v4

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "stride"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/TableInfo;

    const-string v6, "fileData_table"

    invoke-direct {v5, v6, v3, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v6}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroidx/media3/common/FlagSet$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fileData_table(com.motorola.camera.background.provider.filedatacontract.FileData).\n Expected:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/media3/common/FlagSet$Builder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v2, v1, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    :goto_0
    return-object v2

    :pswitch_1
    new-instance v3, Ljava/util/HashMap;

    const/16 v12, 0x12

    invoke-direct {v3, v12}, Ljava/util/HashMap;-><init>(I)V

    new-instance v12, Landroidx/room/util/TableInfo$Column;

    const-string v19, "id"

    const-string v20, "INTEGER"

    const/16 v27, 0x1

    const/16 v17, 0x1

    const/16 v26, 0x0

    const/16 v23, 0x1

    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v31, "mediaStoreUri"

    const-string v32, "TEXT"

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v35, 0x1

    const/16 v38, 0x0

    const/16 v45, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "mediaStoreUri"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v31, "ts"

    const-string v32, "INTEGER"

    move-object/from16 v28, v1

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v49, "expirationTime"

    const-string v50, "INTEGER"

    const/16 v47, 0x0

    const/16 v48, 0x1

    const/16 v51, 0x0

    const/16 v52, 0x1

    move-object/from16 v46, v1

    invoke-direct/range {v46 .. v52}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "expirationTime"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v49, "clientId"

    const-string v50, "INTEGER"

    move-object/from16 v46, v1

    invoke-direct/range {v46 .. v52}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v56, "sourceId"

    const-string v57, "INTEGER"

    const/16 v54, 0x0

    const/16 v55, 0x1

    const/16 v58, 0x0

    const/16 v59, 0x1

    move-object/from16 v53, v1

    invoke-direct/range {v53 .. v59}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v49, "targetId"

    const-string v50, "INTEGER"

    move-object/from16 v46, v1

    invoke-direct/range {v46 .. v52}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v56, "jobNum"

    const-string v57, "INTEGER"

    move-object/from16 v53, v1

    invoke-direct/range {v53 .. v59}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v42, "taskNum"

    const-string v43, "INTEGER"

    const/16 v40, 0x0

    const/16 v41, 0x1

    const/16 v44, 0x0

    move-object/from16 v39, v1

    invoke-direct/range {v39 .. v45}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v31, "priority"

    const-string v32, "INTEGER"

    move-object/from16 v28, v1

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v42, "useFifo"

    const-string v43, "INTEGER"

    const/16 v22, 0x0

    move-object/from16 v39, v1

    invoke-direct/range {v39 .. v45}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v36, "comment"

    const-string v37, "TEXT"

    const/16 v39, 0x0

    move-object/from16 v33, v1

    move/from16 v34, v13

    invoke-direct/range {v33 .. v39}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v8, "progressLevel"

    const-string v9, "INTEGER"

    const/16 v33, 0x0

    const/16 v40, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "progressLevel"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v7, "progressMax"

    const-string v8, "INTEGER"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "progressMax"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v37, "thumbWidth"

    const-string v38, "INTEGER"

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v39, 0x0

    move-object/from16 v34, v1

    invoke-direct/range {v34 .. v40}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "thumbWidth"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v24, "thumbHeight"

    const-string v25, "INTEGER"

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "thumbHeight"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v31, "thumbnailPath"

    const-string v32, "TEXT"

    const/16 v34, 0x0

    move-object/from16 v28, v1

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "thumbnailPath"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v19, "uuid"

    const-string v20, "INTEGER"

    const/16 v22, 0x1

    move-object/from16 v16, v1

    move-object/from16 v21, v12

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "uuid"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Landroidx/room/util/TableInfo;

    const-string v5, "bgCaptureRecord_table"

    invoke-direct {v2, v5, v3, v1, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/media3/common/FlagSet$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bgCaptureRecord_table(com.motorola.camera.background.provider.BgCaptureRecord).\n Expected:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/media3/common/FlagSet$Builder;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    :goto_1
    return-object v1

    :pswitch_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v11, Landroidx/room/util/TableInfo$Column;

    const-string v7, "work_spec_id"

    const-string v8, "TEXT"

    const/4 v10, 0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "work_spec_id"

    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const-string v19, "prerequisite_id"

    const-string v20, "TEXT"

    const/16 v22, 0x1

    const/16 v17, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x1

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "prerequisite_id"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Landroidx/room/util/TableInfo$ForeignKey;

    const-string v17, "WorkSpec"

    const-string v18, "CASCADE"

    const-string v19, "CASCADE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v21}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroidx/room/util/TableInfo$ForeignKey;

    const-string v23, "WorkSpec"

    const-string v24, "CASCADE"

    const-string v25, "CASCADE"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v22, v7

    invoke-direct/range {v22 .. v27}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v10, "ASC"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v14, "index_Dependency_work_spec_id"

    const/4 v3, 0x0

    invoke-direct {v8, v14, v3, v9, v11}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_Dependency_prerequisite_id"

    invoke-direct {v8, v11, v3, v6, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v6, "Dependency"

    invoke-direct {v3, v6, v1, v5, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v6}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x1b

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "id"

    const-string v21, "TEXT"

    const/16 v28, 0x1

    const/16 v18, 0x1

    const/16 v34, 0x0

    const/16 v37, 0x1

    const/16 v40, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v19, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v44, "state"

    const-string v45, "INTEGER"

    const/16 v47, 0x1

    const/16 v42, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x1

    move-object/from16 v41, v3

    invoke-direct/range {v41 .. v47}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v25, "worker_class_name"

    const-string v26, "TEXT"

    const/16 v36, 0x0

    const/4 v5, 0x0

    const/16 v24, 0x1

    const/16 v27, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "worker_class_name"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "input_merger_class_name"

    const-string v21, "TEXT"

    const/16 v39, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move/from16 v23, v5

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "input_merger_class_name"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "input"

    const-string v21, "BLOB"

    const/4 v5, 0x1

    const/16 v44, 0x1

    const/16 v23, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "input"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "output"

    const-string v21, "BLOB"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "output"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "initial_delay"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "initial_delay"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "interval_duration"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "interval_duration"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "flex_duration"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "flex_duration"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "run_attempt_count"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "run_attempt_count"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "backoff_policy"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "backoff_policy"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "backoff_delay_duration"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "backoff_delay_duration"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "last_enqueue_time"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "last_enqueue_time"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "minimum_retention_duration"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v7, "minimum_retention_duration"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "schedule_requested_at"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v7, "schedule_requested_at"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v25, "run_in_foreground"

    const-string v26, "INTEGER"

    const/16 v23, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v8, "run_in_foreground"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v32, "out_of_quota_policy"

    const-string v33, "INTEGER"

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v35, 0x1

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v8, "out_of_quota_policy"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "period_count"

    const-string v21, "INTEGER"

    const-string v22, "0"

    const/16 v23, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v8, "period_count"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "generation"

    const-string v21, "INTEGER"

    const-string v22, "0"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v8, "generation"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "required_network_type"

    const-string v21, "INTEGER"

    const/4 v9, 0x0

    const/16 v43, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v11, "required_network_type"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "requires_charging"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v11, "requires_charging"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "requires_device_idle"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v11, "requires_device_idle"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "requires_battery_not_low"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v11, "requires_battery_not_low"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "requires_storage_not_low"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v11, "requires_storage_not_low"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "trigger_content_update_delay"

    const-string v21, "INTEGER"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v11, "trigger_content_update_delay"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v41, "trigger_max_content_delay"

    const-string v42, "INTEGER"

    move-object/from16 v38, v3

    invoke-direct/range {v38 .. v44}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v11, "trigger_max_content_delay"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v38, "content_uri_triggers"

    const-string v39, "BLOB"

    move-object/from16 v35, v3

    move-object/from16 v40, v9

    move/from16 v41, v5

    invoke-direct/range {v35 .. v41}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "content_uri_triggers"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v9, Ljava/util/HashSet;

    const/4 v11, 0x2

    invoke-direct {v9, v11}, Ljava/util/HashSet;-><init>(I)V

    new-instance v11, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "index_WorkSpec_schedule_requested_at"

    invoke-direct {v11, v14, v5, v7, v13}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v13, "index_WorkSpec_last_enqueue_time"

    invoke-direct {v7, v13, v5, v6, v11}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/room/util/TableInfo;

    const-string v6, "WorkSpec"

    invoke-direct {v5, v6, v1, v3, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v6}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "tag"

    const-string v21, "TEXT"

    const/16 v28, 0x1

    const/16 v18, 0x1

    const/16 v27, 0x0

    const/16 v24, 0x1

    const/16 v19, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v25, "work_spec_id"

    const-string v26, "TEXT"

    const/16 v23, 0x2

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/TableInfo$ForeignKey;

    const-string v18, "WorkSpec"

    const-string v19, "CASCADE"

    const-string v20, "CASCADE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_WorkTag_work_spec_id"

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12, v7, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroidx/room/util/TableInfo;

    const-string v7, "WorkTag"

    invoke-direct {v6, v7, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "work_spec_id"

    const-string v21, "TEXT"

    const/16 v28, 0x1

    const/16 v18, 0x1

    const/16 v27, 0x0

    const/16 v24, 0x1

    const/16 v19, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v32, "generation"

    const-string v33, "INTEGER"

    const/16 v35, 0x1

    const/16 v30, 0x2

    const-string v34, "0"

    const/16 v31, 0x1

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v35}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v25, "system_id"

    const-string v26, "INTEGER"

    const/16 v23, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "system_id"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/TableInfo$ForeignKey;

    const-string v18, "WorkSpec"

    const-string v19, "CASCADE"

    const-string v20, "CASCADE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Landroidx/room/util/TableInfo;

    const-string v7, "SystemIdInfo"

    invoke-direct {v6, v7, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "name"

    const-string v21, "TEXT"

    const/16 v28, 0x1

    const/16 v18, 0x1

    const/16 v27, 0x0

    const/16 v24, 0x1

    const/16 v19, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "name"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v25, "work_spec_id"

    const-string v26, "TEXT"

    const/16 v23, 0x2

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/TableInfo$ForeignKey;

    const-string v18, "WorkSpec"

    const-string v19, "CASCADE"

    const-string v20, "CASCADE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "index_WorkName_work_spec_id"

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10, v7, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroidx/room/util/TableInfo;

    const-string v7, "WorkName"

    invoke-direct {v6, v7, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v8, "work_spec_id"

    const-string v9, "TEXT"

    const/4 v11, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v20, "progress"

    const-string v21, "BLOB"

    const/16 v23, 0x1

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "progress"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Landroidx/room/util/TableInfo$ForeignKey;

    const-string v7, "WorkSpec"

    const-string v8, "CASCADE"

    const-string v9, "CASCADE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "WorkProgress"

    invoke-direct {v4, v5, v1, v3, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v6, "key"

    const-string v7, "TEXT"

    const/4 v9, 0x1

    const/4 v4, 0x1

    const/16 v21, 0x0

    const/16 v18, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v19, "long_value"

    const-string v20, "INTEGER"

    const/16 v22, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "long_value"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v5, "Preference"

    invoke-direct {v3, v5, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_8
    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    :goto_2
    return-object v0

    :goto_3
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x19

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v19, "id"

    const-string v20, "INTEGER"

    const/16 v27, 0x1

    const/16 v17, 0x1

    const/16 v26, 0x0

    const/16 v23, 0x1

    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v31, "markForDelete"

    const-string v32, "INTEGER"

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v12, "markForDelete"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v31, "ts"

    const-string v32, "INTEGER"

    const/4 v12, 0x0

    const/16 v35, 0x1

    const/16 v38, 0x0

    const/16 v45, 0x1

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v49, "clientId"

    const-string v50, "INTEGER"

    const/16 v47, 0x0

    const/16 v48, 0x1

    const/16 v51, 0x0

    const/16 v52, 0x1

    move-object/from16 v46, v2

    invoke-direct/range {v46 .. v52}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v56, "sourceId"

    const-string v57, "INTEGER"

    const/16 v54, 0x0

    const/16 v55, 0x1

    const/16 v58, 0x0

    const/16 v59, 0x1

    move-object/from16 v53, v2

    invoke-direct/range {v53 .. v59}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v49, "targetId"

    const-string v50, "INTEGER"

    move-object/from16 v46, v2

    invoke-direct/range {v46 .. v52}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v56, "jobNum"

    const-string v57, "INTEGER"

    move-object/from16 v53, v2

    invoke-direct/range {v53 .. v59}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v31, "taskNum"

    const-string v32, "INTEGER"

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v42, "priority"

    const-string v43, "INTEGER"

    const/16 v40, 0x0

    const/16 v41, 0x1

    const/16 v44, 0x0

    move-object/from16 v39, v2

    invoke-direct/range {v39 .. v45}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v31, "useFifo"

    const-string v32, "INTEGER"

    const/16 v22, 0x0

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v36, "comment"

    const-string v37, "TEXT"

    const/16 v39, 0x0

    move-object/from16 v33, v2

    move/from16 v34, v12

    invoke-direct/range {v33 .. v39}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "coProcId"

    const-string v9, "INTEGER"

    const/16 v33, 0x0

    const/16 v40, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "coProcId"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v37, "callerId"

    const-string v38, "INTEGER"

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v39, 0x0

    move-object/from16 v34, v2

    invoke-direct/range {v34 .. v40}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "callerId"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "msgType"

    const-string v9, "INTEGER"

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "msgType"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "msg"

    const-string v9, "TEXT"

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "msg"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "returnCode"

    const-string v9, "INTEGER"

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "returnCode"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v37, "iCallerId"

    const-string v38, "INTEGER"

    move-object/from16 v34, v2

    invoke-direct/range {v34 .. v40}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "iCallerId"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "iMsgType"

    const-string v9, "INTEGER"

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "iMsgType"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "iMsg"

    const-string v9, "TEXT"

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "iMsg"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "iReturnCode"

    const-string v9, "INTEGER"

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "iReturnCode"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "state"

    const-string v9, "TEXT"

    const/4 v11, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v24, "progressInd"

    const-string v25, "INTEGER"

    const/4 v4, 0x1

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "progressInd"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v9, "timeExpiration"

    const-string v10, "INTEGER"

    const/16 v34, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "timeExpiration"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v31, "scheduled"

    const-string v32, "INTEGER"

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v34}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v5, "scheduled"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v19, "retryCount"

    const-string v20, "INTEGER"

    move-object/from16 v16, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "retryCount"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v5, "transaction_table"

    invoke-direct {v3, v5, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Landroidx/media3/common/FlagSet$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "transaction_table(com.motorola.camera.background.service.jms.db.Transaction).\n Expected:\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    goto :goto_4

    :cond_9
    new-instance v1, Landroidx/media3/common/FlagSet$Builder;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(ZLjava/lang/String;)V

    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
