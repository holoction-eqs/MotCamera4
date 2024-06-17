.class public final Landroidx/room/RoomOpenHelper;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "SourceFile"


# instance fields
.field public configuration:Landroidx/room/DatabaseConfiguration;

.field public final delegate:Landroidx/media3/decoder/Buffer;

.field public final identityHash:Ljava/lang/String;

.field public final legacyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/work/impl/WorkDatabase_Impl$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p2, Landroidx/media3/decoder/Buffer;->flags:I

    invoke-direct {p0, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    iput-object p1, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    iput-object p2, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/media3/decoder/Buffer;

    iput-object p3, p0, Landroidx/room/RoomOpenHelper;->identityHash:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/RoomOpenHelper;->legacyHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onConfigure(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 3

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/media3/decoder/Buffer;

    invoke-virtual {v0, p1}, Landroidx/media3/decoder/Buffer;->createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Landroidx/media3/decoder/Buffer;->onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/media3/common/FlagSet$Builder;

    move-result-object v1

    iget-boolean v2, v1, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    invoke-virtual {v0, p1}, Landroidx/media3/decoder/Buffer;->onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onDowngrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomOpenHelper;->onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V

    return-void
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 5

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/media3/decoder/Buffer;

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v4, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v4}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->identityHash:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroidx/room/RoomOpenHelper;->legacyHash:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/media3/decoder/Buffer;->onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/media3/common/FlagSet$Builder;

    move-result-object v1

    iget-boolean v2, v1, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->onPostMigrate()V

    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    :cond_4
    :goto_2
    invoke-virtual {v0, p1}, Landroidx/media3/decoder/Buffer;->onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    iput-object v3, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 12

    iget-object v0, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    iget-object v1, p0, Landroidx/room/RoomOpenHelper;->delegate:Landroidx/media3/decoder/Buffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/lifecycle/MethodCallsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-ne p2, p3, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_8

    :cond_0
    if-le p3, p2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, p2

    :cond_2
    if-eqz v4, :cond_3

    if-ge v6, p3, :cond_4

    goto :goto_1

    :cond_3
    if-le v6, p3, :cond_4

    :goto_1
    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    if-eqz v7, :cond_b

    iget-object v7, v0, Landroidx/lifecycle/MethodCallsLogger;->calledMethods:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/TreeMap;

    if-nez v7, :cond_5

    goto :goto_7

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v7}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v8

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const-string v10, "targetVersion"

    if-eqz v4, :cond_8

    add-int/lit8 v11, v6, 0x1

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v11, v10, :cond_9

    if-gt v10, p3, :cond_9

    goto :goto_4

    :cond_8
    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt p3, v10, :cond_9

    if-ge v10, v6, :cond_9

    :goto_4
    move v10, v3

    goto :goto_5

    :cond_9
    move v10, v2

    :goto_5
    if-eqz v10, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v3

    goto :goto_6

    :cond_a
    move v7, v2

    :goto_6
    if-nez v7, :cond_2

    :goto_7
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    move-object v0, v5

    :goto_8
    if-eqz v0, :cond_e

    invoke-virtual {v1, p1}, Landroidx/media3/decoder/Buffer;->onPreMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/migration/Migration;

    invoke-virtual {v2, p1}, Landroidx/room/migration/Migration;->migrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v1, p1}, Landroidx/media3/decoder/Buffer;->onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/media3/common/FlagSet$Builder;

    move-result-object v0

    iget-boolean v2, v0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Landroidx/media3/decoder/Buffer;->onPostMigrate()V

    invoke-virtual {p0, p1}, Landroidx/room/RoomOpenHelper;->updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    move v2, v3

    goto :goto_a

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Migration didn\'t properly handle: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_a
    if-nez v2, :cond_10

    iget-object p0, p0, Landroidx/room/RoomOpenHelper;->configuration:Landroidx/room/DatabaseConfiguration;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p2, p3}, Landroidx/room/DatabaseConfiguration;->isMigrationRequired(II)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {v1, p1}, Landroidx/media3/decoder/Buffer;->dropAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    invoke-virtual {v1, p1}, Landroidx/media3/decoder/Buffer;->createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    goto :goto_b

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "A migration from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_b
    return-void
.end method

.method public final updateIdentity(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/RoomOpenHelper;->identityHash:Ljava/lang/String;

    const-string v0, "hash"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
