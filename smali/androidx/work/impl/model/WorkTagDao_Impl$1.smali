.class public final Landroidx/work/impl/model/WorkTagDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V
    .locals 0

    iput p3, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;I)V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v14, p0

    iget v14, v14, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    const/16 v15, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_23

    :pswitch_0
    move-object/from16 v14, p2

    check-cast v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    iget-wide v12, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    invoke-interface {v0, v11, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v11, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    if-nez v11, :cond_0

    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v0, v10, v11, v12}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_0
    iget-object v10, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    if-nez v10, :cond_1

    invoke-interface {v0, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, v9, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object v9, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    if-nez v9, :cond_2

    invoke-interface {v0, v8}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    iget-object v8, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    if-nez v8, :cond_3

    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v0, v4, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_3
    iget-object v4, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_4
    iget-object v3, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_5
    iget-object v2, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    if-nez v2, :cond_6

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_6
    iget-object v1, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->refCount:Ljava/lang/Integer;

    if-nez v1, :cond_7

    invoke-interface {v0, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v7, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_7
    iget-object v1, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-interface {v0, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    :cond_8
    invoke-interface {v0, v6, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    iget-object v1, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    :cond_9
    invoke-interface {v0, v5, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_9
    iget-object v1, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    if-nez v1, :cond_a

    invoke-interface {v0, v15}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v15, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_a
    iget-object v1, v14, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    if-nez v2, :cond_b

    const/16 v3, 0xd

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    :cond_b
    const/16 v3, 0xd

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_b
    iget-object v2, v1, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    if-nez v2, :cond_c

    const/16 v3, 0xe

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    :cond_c
    const/16 v3, 0xe

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_c
    iget-object v1, v1, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    if-nez v1, :cond_d

    const/16 v4, 0xf

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const/16 v4, 0xf

    invoke-interface {v0, v4, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_e

    :cond_e
    const/16 v1, 0xd

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_d
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_e
    return-void

    :pswitch_1
    move-object/from16 v12, p2

    check-cast v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    iget-wide v13, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    invoke-interface {v0, v11, v13, v14}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v11, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    if-nez v11, :cond_f

    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    :cond_f
    invoke-interface {v0, v10, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_f
    iget-wide v10, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    invoke-interface {v0, v9, v10, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v9, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    invoke-interface {v0, v8, v9, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v8, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    int-to-long v8, v8

    invoke-interface {v0, v4, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v4, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    int-to-long v8, v4

    invoke-interface {v0, v3, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v3, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v2, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    invoke-interface {v0, v7, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    int-to-long v1, v1

    invoke-interface {v0, v6, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    int-to-long v1, v1

    invoke-interface {v0, v5, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    if-nez v1, :cond_10

    invoke-interface {v0, v15}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    :cond_10
    invoke-interface {v0, v15, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_10
    iget v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    int-to-long v1, v1

    const/16 v3, 0xd

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    int-to-long v1, v1

    const/16 v3, 0xe

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    int-to-long v1, v1

    const/16 v3, 0xf

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    const/16 v2, 0x11

    if-nez v1, :cond_11

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_11

    :cond_11
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_11
    iget-wide v1, v12, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    const/16 v3, 0x12

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_2
    move-object/from16 v12, p2

    check-cast v12, Landroidx/work/impl/model/WorkSpec;

    iget-object v13, v12, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    if-nez v13, :cond_12

    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    :cond_12
    invoke-interface {v0, v11, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_12
    iget-object v11, v12, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-static {v11}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v11

    int-to-long v13, v11

    invoke-interface {v0, v10, v13, v14}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v10, v12, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    if-nez v10, :cond_13

    invoke-interface {v0, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_13

    :cond_13
    invoke-interface {v0, v9, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_13
    iget-object v9, v12, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-nez v9, :cond_14

    invoke-interface {v0, v8}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_14

    :cond_14
    invoke-interface {v0, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_14
    iget-object v8, v12, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v8}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v8

    if-nez v8, :cond_15

    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_15

    :cond_15
    invoke-interface {v0, v8, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    :goto_15
    iget-object v4, v12, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v4}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v4

    if-nez v4, :cond_16

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_16

    :cond_16
    invoke-interface {v0, v4, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    :goto_16
    iget-wide v3, v12, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v2, v12, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v1, v12, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {v0, v7, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v1, v1

    invoke-interface {v0, v6, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v5, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v1, v12, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {v0, v15, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v1, v12, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    const/16 v3, 0xd

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v1, v12, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    const/16 v3, 0xe

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v1, v12, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    const/16 v3, 0xf

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v1, v12, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->outOfQuotaPolicyToInt(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x11

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    int-to-long v1, v1

    const/16 v3, 0x12

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Landroidx/work/impl/model/WorkSpec;->generation:I

    int-to-long v1, v1

    const/16 v3, 0x13

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v12, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    if-eqz v1, :cond_17

    iget v4, v1, Landroidx/work/Constraints;->requiredNetworkType:I

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x14

    invoke-interface {v0, v6, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v4, v1, Landroidx/work/Constraints;->requiresCharging:Z

    int-to-long v4, v4

    const/16 v6, 0x15

    invoke-interface {v0, v6, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v4, v1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    int-to-long v4, v4

    const/16 v6, 0x16

    invoke-interface {v0, v6, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v4, v1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    int-to-long v4, v4

    const/16 v6, 0x17

    invoke-interface {v0, v6, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v4, v1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    int-to-long v4, v4

    const/16 v6, 0x18

    invoke-interface {v0, v6, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v4, v1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    const/16 v6, 0x19

    invoke-interface {v0, v6, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v4, v1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    goto :goto_17

    :cond_17
    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_17
    return-void

    :pswitch_3
    move-object/from16 v1, p2

    check-cast v1, Landroidx/work/impl/model/WorkProgress;

    iget-object v2, v1, Landroidx/work/impl/model/WorkProgress;->workSpecId:Ljava/lang/String;

    if-nez v2, :cond_18

    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_18

    :cond_18
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_18
    iget-object v1, v1, Landroidx/work/impl/model/WorkProgress;->progress:Landroidx/work/Data;

    invoke-static {v1}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v1

    if-nez v1, :cond_19

    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_19

    :cond_19
    invoke-interface {v0, v1, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob([BI)V

    :goto_19
    return-void

    :pswitch_4
    move-object/from16 v1, p2

    check-cast v1, Landroidx/work/impl/model/WorkName;

    iget-object v2, v1, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    if-nez v2, :cond_1a

    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1a

    :cond_1a
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1a
    iget-object v1, v1, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    if-nez v1, :cond_1b

    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1b

    :cond_1b
    invoke-interface {v0, v10, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1b
    return-void

    :pswitch_5
    move-object/from16 v1, p2

    check-cast v1, Landroidx/work/impl/model/SystemIdInfo;

    iget-object v2, v1, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    if-nez v2, :cond_1c

    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1c

    :cond_1c
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1c
    iget v2, v1, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    int-to-long v2, v2

    invoke-interface {v0, v10, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v1, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    int-to-long v1, v1

    invoke-interface {v0, v9, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_6
    move-object/from16 v1, p2

    check-cast v1, Landroidx/work/impl/model/Preference;

    iget-object v2, v1, Landroidx/work/impl/model/Preference;->key:Ljava/lang/String;

    if-nez v2, :cond_1d

    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1d

    :cond_1d
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1d
    iget-object v1, v1, Landroidx/work/impl/model/Preference;->value:Ljava/lang/Long;

    if-nez v1, :cond_1e

    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1e

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v10, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1e
    return-void

    :pswitch_7
    move-object/from16 v1, p2

    check-cast v1, Landroidx/work/impl/model/Dependency;

    iget-object v2, v1, Landroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    if-nez v2, :cond_1f

    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1f

    :cond_1f
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1f
    iget-object v1, v1, Landroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    if-nez v1, :cond_20

    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_20

    :cond_20
    invoke-interface {v0, v10, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_20
    return-void

    :pswitch_8
    move-object/from16 v1, p2

    check-cast v1, Landroidx/work/impl/model/WorkTag;

    iget-object v2, v1, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    if-nez v2, :cond_21

    invoke-interface {v0, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_21

    :cond_21
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_21
    iget-object v1, v1, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    if-nez v1, :cond_22

    invoke-interface {v0, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_22

    :cond_22
    invoke-interface {v0, v10, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_22
    return-void

    :goto_23
    move-object/from16 v12, p2

    check-cast v12, Lcom/motorola/camera/background/service/jms/db/Transaction;

    iget-wide v13, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    invoke-interface {v0, v11, v13, v14}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v11, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    int-to-long v13, v11

    invoke-interface {v0, v10, v13, v14}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v10, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    invoke-interface {v0, v9, v10, v11}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v9, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    int-to-long v9, v9

    invoke-interface {v0, v8, v9, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v8, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    int-to-long v8, v8

    invoke-interface {v0, v4, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v4, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    int-to-long v8, v4

    invoke-interface {v0, v3, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v3, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v2, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    int-to-long v1, v1

    invoke-interface {v0, v7, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    int-to-long v1, v1

    invoke-interface {v0, v6, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    if-nez v1, :cond_23

    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_24

    :cond_23
    invoke-interface {v0, v5, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_24
    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    int-to-long v1, v1

    invoke-interface {v0, v15, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    int-to-long v1, v1

    const/16 v3, 0xd

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    int-to-long v1, v1

    const/16 v3, 0xe

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    const/16 v2, 0xf

    if-nez v1, :cond_24

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_25

    :cond_24
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_25
    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    int-to-long v1, v1

    const/16 v3, 0x11

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    int-to-long v1, v1

    const/16 v3, 0x12

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    const/16 v2, 0x13

    if-nez v1, :cond_25

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_26

    :cond_25
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_26
    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    int-to-long v1, v1

    const/16 v3, 0x14

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    const/16 v2, 0x15

    if-nez v1, :cond_26

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_27

    :cond_26
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_27
    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    int-to-long v1, v1

    const/16 v3, 0x16

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-wide v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    const/16 v3, 0x17

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-boolean v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    int-to-long v1, v1

    const/16 v3, 0x18

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget v1, v12, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    int-to-long v1, v1

    const/16 v3, 0x19

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INSERT OR ABORT INTO `transaction_table` (`id`,`markForDelete`,`ts`,`clientId`,`sourceId`,`targetId`,`jobNum`,`taskNum`,`priority`,`useFifo`,`comment`,`coProcId`,`callerId`,`msgType`,`msg`,`returnCode`,`iCallerId`,`iMsgType`,`iMsg`,`iReturnCode`,`state`,`progressInd`,`timeExpiration`,`scheduled`,`retryCount`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_0
    const-string p0, "INSERT OR ABORT INTO `fileData_table` (`id`,`tag`,`file_name`,`uri`,`ts`,`MIME_type`,`format`,`time_out`,`ref_count`,`compression_type`,`encryption_type`,`mSize`,`width`,`height`,`stride`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_1
    const-string p0, "INSERT OR ABORT INTO `bgCaptureRecord_table` (`id`,`mediaStoreUri`,`ts`,`expirationTime`,`clientId`,`sourceId`,`targetId`,`jobNum`,`taskNum`,`priority`,`useFifo`,`comment`,`progressLevel`,`progressMax`,`thumbWidth`,`thumbHeight`,`thumbnailPath`,`uuid`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_2
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_3
    const-string p0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object p0

    :pswitch_4
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_5
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object p0

    :pswitch_6
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object p0

    :pswitch_7
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object p0

    :pswitch_8
    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
