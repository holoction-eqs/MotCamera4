.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public volatile _dependencyDao:Lcom/airbnb/lottie/model/MutablePair;

.field public volatile _preferenceDao:Lcom/motorola/camera/device/CameraService;

.field public volatile _rawWorkInfoDao:Lcom/adobe/xmp/impl/xpath/XMPPath;

.field public volatile _systemIdInfoDao:Landroidx/work/WorkQuery$Builder;

.field public volatile _workNameDao:Lcom/motorola/camera/CameraKpi;

.field public volatile _workProgressDao:Landroidx/work/WorkQuery;

.field public volatile _workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public volatile _workTagDao:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 6

    new-instance v3, Landroidx/room/RoomOpenHelper;

    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$1;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/work/impl/WorkDatabase_Impl$1;-><init>(Landroidx/room/RoomDatabase;II)V

    const-string p0, "5181942b9ebc31ce68dacb56c16fd79f"

    const-string v1, "ae2044fb577e65ee8bb576ca48a2f06e"

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

.method public final dependencyDao()Lcom/airbnb/lottie/model/MutablePair;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/airbnb/lottie/model/MutablePair;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/airbnb/lottie/model/MutablePair;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/airbnb/lottie/model/MutablePair;

    if-nez v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/airbnb/lottie/model/MutablePair;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lcom/airbnb/lottie/model/MutablePair;

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
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [Landroidx/room/migration/Migration;

    new-instance p1, Landroidx/work/impl/WorkDatabase_AutoMigration_13_14_Impl;

    invoke-direct {p1}, Landroidx/work/impl/WorkDatabase_AutoMigration_13_14_Impl;-><init>()V

    const/4 v0, 0x0

    aput-object p1, p0, v0

    new-instance p1, Landroidx/work/impl/WorkMigration9To10;

    invoke-direct {p1}, Landroidx/work/impl/WorkMigration9To10;-><init>()V

    const/4 v0, 0x1

    aput-object p1, p0, v0

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

    const-class v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Landroidx/work/WorkQuery$Builder;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/motorola/camera/CameraKpi;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Landroidx/work/WorkQuery;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/motorola/camera/device/CameraService;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final preferenceDao()Lcom/motorola/camera/device/CameraService;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/device/CameraService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/device/CameraService;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/device/CameraService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/camera/device/CameraService;

    invoke-direct {v0, p0}, Lcom/motorola/camera/device/CameraService;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/device/CameraService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lcom/motorola/camera/device/CameraService;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final rawWorkInfoDao()Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/adobe/xmp/impl/xpath/XMPPath;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/adobe/xmp/impl/xpath/XMPPath;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/adobe/xmp/impl/xpath/XMPPath;

    if-nez v0, :cond_1

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/adobe/xmp/impl/xpath/XMPPath;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_rawWorkInfoDao:Lcom/adobe/xmp/impl/xpath/XMPPath;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final systemIdInfoDao()Landroidx/work/WorkQuery$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery$Builder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery$Builder;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery$Builder;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v0, p0}, Landroidx/work/WorkQuery$Builder;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery$Builder;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/WorkQuery$Builder;

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

.method public final workNameDao()Lcom/motorola/camera/CameraKpi;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lcom/motorola/camera/CameraKpi;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lcom/motorola/camera/CameraKpi;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lcom/motorola/camera/CameraKpi;

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, p0}, Lcom/motorola/camera/CameraKpi;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lcom/motorola/camera/CameraKpi;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lcom/motorola/camera/CameraKpi;

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

.method public final workProgressDao()Landroidx/work/WorkQuery;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/WorkQuery;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/WorkQuery;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/WorkQuery;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/work/WorkQuery;

    invoke-direct {v0, p0}, Landroidx/work/WorkQuery;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/WorkQuery;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Landroidx/work/WorkQuery;

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

.method public final workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao_Impl;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final workTagDao()Landroidx/core/view/MenuHostHelper;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/core/view/MenuHostHelper;

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
