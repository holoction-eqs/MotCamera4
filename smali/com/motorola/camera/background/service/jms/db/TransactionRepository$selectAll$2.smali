.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/google/common/base/Splitter$1;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->this$0:Lcom/google/common/base/Splitter$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->this$0:Lcom/google/common/base/Splitter$1;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;-><init>(Lcom/google/common/base/Splitter$1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 60

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$selectAll$2;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object v0, v0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    if-eqz v0, :cond_8

    const-string v2, "SELECT * FROM transaction_table"

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-static {v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "markForDelete"

    invoke-static {v4, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ts"

    invoke-static {v4, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "clientId"

    invoke-static {v4, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sourceId"

    invoke-static {v4, v8}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "targetId"

    invoke-static {v4, v9}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "jobNum"

    invoke-static {v4, v10}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "taskNum"

    invoke-static {v4, v11}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "priority"

    invoke-static {v4, v12}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "useFifo"

    invoke-static {v4, v13}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "comment"

    invoke-static {v4, v14}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "coProcId"

    invoke-static {v4, v15}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "callerId"

    invoke-static {v4, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "msgType"

    invoke-static {v4, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "msg"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "returnCode"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "iCallerId"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "iMsgType"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "iMsg"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "iReturnCode"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "state"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "progressInd"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "timeExpiration"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "scheduled"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "retryCount"

    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v28, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v29, 0x1

    if-eqz v3, :cond_0

    move/from16 v32, v29

    goto :goto_1

    :cond_0
    const/16 v32, 0x0

    :goto_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v43, v29

    goto :goto_2

    :cond_1
    const/16 v43, 0x0

    :goto_2
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v44, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v44, v3

    :goto_3
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    move/from16 v3, v28

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    move/from16 v28, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move/from16 v17, v0

    move/from16 v0, v18

    const/16 v48, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v48, v17

    move/from16 v17, v0

    move/from16 v0, v18

    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_4

    move/from16 v21, v0

    move/from16 v0, v22

    const/16 v52, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v52, v21

    move/from16 v21, v0

    move/from16 v0, v22

    :goto_5
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_5

    move/from16 v23, v0

    move/from16 v0, v24

    const/16 v54, 0x0

    goto :goto_6

    :cond_5
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v54, v23

    move/from16 v23, v0

    move/from16 v0, v24

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_6

    move/from16 v26, v0

    move/from16 v0, v27

    move/from16 v58, v29

    goto :goto_7

    :cond_6
    move/from16 v26, v0

    move/from16 v0, v27

    const/16 v58, 0x0

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    move/from16 v27, v0

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/Transaction;

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v59}, Lcom/motorola/camera/background/service/jms/db/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v28

    move/from16 v28, v3

    goto/16 :goto_0

    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    move-object v1, v2

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1
.end method
