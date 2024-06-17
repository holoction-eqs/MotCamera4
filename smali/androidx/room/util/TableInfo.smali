.class public final Landroidx/room/util/TableInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final columns:Ljava/util/Map;

.field public final foreignKeys:Ljava/util/Set;

.field public final indices:Ljava/util/Set;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    iput-object p3, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    iput-object p4, p0, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    return-void
.end method

.method public static final read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "seq"

    const-string v3, "id"

    const-string v4, "type"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PRAGMA table_info(`"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "`)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-string v8, "name"

    if-gtz v7, :cond_0

    :try_start_1
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    goto :goto_2

    :cond_0
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "notnull"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "pk"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "dflt_value"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v15}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_1

    const/16 v23, 0x1

    goto :goto_1

    :cond_1
    const/16 v23, 0x0

    :goto_1
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {v9, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v24, v7

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    invoke-static {v10, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x2

    move-object/from16 v17, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v15, v9, v7}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v7, v24

    goto :goto_0

    :cond_2
    invoke-virtual {v15}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    const/4 v4, 0x1

    iput-boolean v4, v15, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v4, v15

    :goto_2
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "PRAGMA foreign_key_list(`"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_2
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "table"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "on_delete"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "on_update"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v14, "from"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "to"

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    new-instance v7, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v7}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v18, v4

    new-instance v4, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    move-object/from16 v19, v8

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v20, v3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v21, v2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v14

    const-string v14, "cursor.getString(fromColumnIndex)"

    invoke-static {v2, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v23, v15

    const-string v15, "cursor.getString(toColumnIndex)"

    invoke-static {v14, v15}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, v8, v3, v14}, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v7, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    move/from16 v3, v20

    move/from16 v2, v21

    move/from16 v14, v22

    move/from16 v15, v23

    goto :goto_3

    :cond_3
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-static {v7}, Lkotlin/jvm/JvmClassMappingKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v4, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v4}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    check-cast v15, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v21, v2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move/from16 v22, v9

    move-object v9, v2

    check-cast v9, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    iget v9, v9, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->id:I

    if-ne v9, v7, :cond_5

    const/4 v9, 0x1

    goto :goto_6

    :cond_5
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v2, v21

    move/from16 v9, v22

    goto :goto_5

    :cond_7
    move-object/from16 v21, v2

    move/from16 v22, v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    iget-object v7, v3, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->from:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->to:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    new-instance v2, Landroidx/room/util/TableInfo$ForeignKey;

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "cursor.getString(tableColumnIndex)"

    invoke-static {v3, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "cursor.getString(onDeleteColumnIndex)"

    invoke-static {v7, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "cursor.getString(onUpdateColumnIndex)"

    invoke-static {v9, v15}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v8

    move-object/from16 v29, v14

    invoke-direct/range {v24 .. v29}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    move/from16 v9, v22

    const/4 v3, -0x1

    goto/16 :goto_4

    :cond_9
    invoke-static {v4}, Lkotlin/ExceptionsKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v2, 0x0

    invoke-static {v5, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA index_list(`"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v3, v19

    :try_start_3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v7, "origin"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "unique"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v5, v9, :cond_14

    if-eq v7, v9, :cond_14

    if-ne v8, v9, :cond_a

    goto/16 :goto_e

    :cond_a
    new-instance v9, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v9}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "c"

    invoke-static {v11, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    move v11, v12

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    :goto_9
    invoke-static {v10, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "PRAGMA index_xinfo(`"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v14, "seqno"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "cid"

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "desc"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v19, v3

    const/4 v3, -0x1

    if-eq v14, v3, :cond_11

    if-eq v15, v3, :cond_11

    if-eq v12, v3, :cond_11

    if-ne v0, v3, :cond_d

    goto/16 :goto_c

    :cond_d
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    move/from16 v21, v5

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    :goto_a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-gez v22, :cond_e

    goto :goto_a

    :cond_e
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move-object/from16 v23, v6

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-lez v24, :cond_f

    const-string v24, "DESC"

    goto :goto_b

    :cond_f
    const-string v24, "ASC"

    :goto_b
    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v24, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v26, v8

    const-string v8, "columnName"

    invoke-static {v6, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v23

    move/from16 v7, v24

    move/from16 v0, v25

    move/from16 v8, v26

    goto :goto_a

    :cond_10
    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v26, v8

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v3, "columnsMap.values"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v5, "ordersMap.values"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Landroidx/room/util/TableInfo$Index;

    invoke-direct {v5, v10, v11, v0, v3}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :try_start_5
    invoke-static {v13, v0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_d

    :cond_11
    :goto_c
    move/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v26, v8

    const/4 v0, 0x0

    invoke-static {v13, v0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v5, v0

    :goto_d
    if-nez v5, :cond_12

    invoke-static {v2, v0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    goto :goto_f

    :cond_12
    :try_start_6
    invoke-virtual {v9, v5}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v0, p0

    move-object/from16 v3, v19

    move/from16 v5, v21

    move-object/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v26

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-static {v13, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_13
    invoke-static {v9}, Lkotlin/ExceptionsKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v7, v9

    goto :goto_f

    :cond_14
    :goto_e
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v7, v0

    :goto_f
    new-instance v0, Landroidx/room/util/TableInfo;

    move-object/from16 v15, v18

    invoke-direct {v0, v1, v15, v4, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-static {v5, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-static {v5, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/room/util/TableInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/room/util/TableInfo;

    iget-object v1, p1, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    iget-object v3, p1, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    iget-object v3, p1, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    if-eqz p0, :cond_6

    iget-object p1, p1, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_6
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TableInfo{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
