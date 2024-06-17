.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;
.super Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;
.source "SourceFile"


# instance fields
.field public volatile _fileDataDao:Landroidx/appcompat/widget/TooltipPopup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "fileData_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 6

    new-instance v3, Landroidx/room/RoomOpenHelper;

    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v1}, Landroidx/work/impl/WorkDatabase_Impl$1;-><init>(Landroidx/room/RoomDatabase;II)V

    const-string p0, "41277b012cb2d2018b09947c5a388aa5"

    const-string v1, "98dc219156d828cdf4184b14ded41339"

    invoke-direct {v3, p1, v0, p0, v1}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/work/impl/WorkDatabase_Impl$1;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    const-string p0, "context"

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    new-instance p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method public final fileDataDao()Landroidx/appcompat/widget/TooltipPopup;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;->_fileDataDao:Landroidx/appcompat/widget/TooltipPopup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;->_fileDataDao:Landroidx/appcompat/widget/TooltipPopup;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;->_fileDataDao:Landroidx/appcompat/widget/TooltipPopup;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/TooltipPopup;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;->_fileDataDao:Landroidx/appcompat/widget/TooltipPopup;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;->_fileDataDao:Landroidx/appcompat/widget/TooltipPopup;

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public final getAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroidx/room/migration/Migration;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Landroidx/appcompat/widget/TooltipPopup;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
