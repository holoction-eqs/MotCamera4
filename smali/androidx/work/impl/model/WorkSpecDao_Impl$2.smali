.class public final Landroidx/work/impl/model/WorkSpecDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;I)V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/provider/BgCaptureRecord;)V
    .locals 3

    iget p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-wide v1, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    .line 2
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    .line 3
    :goto_0
    iget-wide v1, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    .line 4
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x2

    iget-object v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_0
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x3

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x4

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x8

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x9

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    int-to-long v0, p0

    const/16 p0, 0xb

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xc

    iget-object v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_1
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    int-to-long v0, p0

    const/16 p0, 0xd

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    int-to-long v0, p0

    const/16 p0, 0xe

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    int-to-long v0, p0

    const/16 p0, 0xf

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    int-to-long v0, p0

    const/16 p0, 0x10

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x11

    iget-object v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_2
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0x12

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x13

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 5
    :pswitch_0
    check-cast p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/provider/BgCaptureRecord;)V

    return-void

    .line 6
    :pswitch_1
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    .line 7
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result p0

    const/4 v0, 0x2

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x3

    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {p0}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    :goto_3
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {p0}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    :goto_4
    const/4 p0, 0x7

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x8

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x9

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(I)I

    move-result p0

    const/16 v0, 0xb

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xc

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xd

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xe

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xf

    iget-wide v0, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean p0, p2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    const/16 v0, 0x10

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->outOfQuotaPolicyToInt(I)I

    move-result p0

    const/16 v0, 0x11

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Landroidx/work/impl/model/WorkSpec;->generation:I

    int-to-long v0, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    const/16 v0, 0x1b

    const/16 v1, 0x1a

    const/16 v2, 0x19

    const/16 v3, 0x18

    const/16 v4, 0x17

    const/16 v5, 0x16

    const/16 v6, 0x15

    const/16 v7, 0x14

    if-eqz p0, :cond_5

    iget v8, p0, Landroidx/work/Constraints;->requiredNetworkType:I

    invoke-static {v8}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-interface {p1, v7, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v7, p0, Landroidx/work/Constraints;->requiresCharging:Z

    int-to-long v7, v7

    invoke-interface {p1, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v6, p0, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    int-to-long v6, v6

    invoke-interface {p1, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v5, p0, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v4, p0, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v3, p0, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v2, p0, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p0, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_5
    const/16 p0, 0x1c

    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    if-nez p2, :cond_6

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, p0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    return-void

    .line 8
    :goto_7
    check-cast p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/motorola/camera/background/provider/BgCaptureRecord;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UPDATE OR ABORT `bgCaptureRecord_table` SET `id` = ?,`mediaStoreUri` = ?,`ts` = ?,`expirationTime` = ?,`clientId` = ?,`sourceId` = ?,`targetId` = ?,`jobNum` = ?,`taskNum` = ?,`priority` = ?,`useFifo` = ?,`comment` = ?,`progressLevel` = ?,`progressMax` = ?,`thumbWidth` = ?,`thumbHeight` = ?,`thumbnailPath` = ?,`uuid` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_0
    const-string p0, "DELETE FROM `bgCaptureRecord_table` WHERE `id` = ?"

    return-object p0

    :pswitch_1
    const-string p0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
