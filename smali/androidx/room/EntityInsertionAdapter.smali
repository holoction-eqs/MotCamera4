.class public abstract Landroidx/room/EntityInsertionAdapter;
.super Landroidx/collection/MapCollections;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/collection/MapCollections;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "database"

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/collection/MapCollections;-><init>(Landroidx/room/RoomDatabase;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/collection/MapCollections;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public abstract bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
.end method

.method public handle(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public insert(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public insertAndReturnId(Ljava/lang/Object;)J
    .locals 3

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/EntityInsertionAdapter;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public abstract run(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
.end method
