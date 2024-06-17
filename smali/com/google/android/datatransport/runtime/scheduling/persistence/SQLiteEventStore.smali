.class public final Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;


# instance fields
.field public final config:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

.field public final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    return-void
.end method

.method public static tryWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/UInt$Companion;->instance:Lkotlin/UInt$Companion;

    :try_start_0
    invoke-virtual {v0, p0}, Lkotlin/UInt$Companion;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public final getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 9

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    move-object v2, v1

    check-cast v2, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/time/UptimeClock;->getTime()J

    move-result-wide v2

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v4

    move-object v5, v1

    check-cast v5, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/time/UptimeClock;->getTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    iget v7, v7, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->criticalSectionEnterTimeoutMs:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string v0, "Timed out while trying to open db."

    invoke-direct {p0, v0, v4}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    check-cast v1, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/time/UptimeClock;->getTime()J

    move-result-wide v2

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;->execute()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catch_0
    move-exception v4

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/time/UptimeClock;->getTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    iget v7, v7, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->criticalSectionEnterTimeoutMs:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string p1, "Timed out while trying to acquire the lock."

    invoke-direct {p0, p1, v4}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
