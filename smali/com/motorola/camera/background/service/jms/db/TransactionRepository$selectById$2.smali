.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $id:J

.field public final synthetic this$0:Lcom/google/common/base/Splitter$1;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->this$0:Lcom/google/common/base/Splitter$1;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->$id:J

    invoke-direct {p0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->this$0:Lcom/google/common/base/Splitter$1;

    iget-wide v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->$id:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;-><init>(Lcom/google/common/base/Splitter$1;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 59

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object v1, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    if-eqz v1, :cond_8

    const-string v3, "SELECT * FROM transaction_table WHERE id = ?"

    const/4 v4, 0x1

    invoke-static {v4, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    iget-wide v5, v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectById$2;->$id:J

    invoke-virtual {v3, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "markForDelete"

    invoke-static {v5, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "ts"

    invoke-static {v5, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "clientId"

    invoke-static {v5, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sourceId"

    invoke-static {v5, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "targetId"

    invoke-static {v5, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "jobNum"

    invoke-static {v5, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "taskNum"

    invoke-static {v5, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "priority"

    invoke-static {v5, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "useFifo"

    invoke-static {v5, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    invoke-static {v5, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "coProcId"

    invoke-static {v5, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "callerId"

    invoke-static {v5, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "msgType"

    invoke-static {v5, v4}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "msg"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "returnCode"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "iCallerId"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "iMsgType"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "iMsg"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "iReturnCode"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "state"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "progressInd"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "timeExpiration"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "scheduled"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "retryCount"

    invoke-static {v5, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v31, 0x1

    goto :goto_0

    :cond_0
    const/16 v31, 0x0

    :goto_0
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v42, 0x1

    goto :goto_1

    :cond_1
    const/16 v42, 0x0

    :goto_1
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v43, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_2
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v0, v18

    const/16 v47, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v47, v0

    move/from16 v0, v18

    :goto_3
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v0, v22

    const/16 v51, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v51, v0

    move/from16 v0, v22

    :goto_4
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v0, v24

    const/16 v53, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v53, v2

    move/from16 v0, v24

    :goto_5
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v57, 0x1

    goto :goto_6

    :cond_6
    const/16 v57, 0x0

    :goto_6
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/Transaction;

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v58}, Lcom/motorola/camera/background/service/jms/db/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    :cond_8
    const/4 v2, 0x0

    :goto_9
    return-object v2
.end method
