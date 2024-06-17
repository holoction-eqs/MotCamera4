.class public final Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowDestructiveMigrationOnDowngrade:Z

.field public allowMainThreadQueries:Z

.field public final autoCloseTimeout:J

.field public final autoMigrationSpecs:Ljava/util/ArrayList;

.field public final callbacks:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field public final journalMode:I

.field public final klass:Ljava/lang/Class;

.field public final migrationContainer:Landroidx/lifecycle/MethodCallsLogger;

.field public migrationStartAndEndVersions:Ljava/util/HashSet;

.field public final migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

.field public final name:Ljava/lang/String;

.field public queryExecutor:Ljava/util/concurrent/Executor;

.field public requireMigration:Z

.field public transactionExecutor:Ljava/util/concurrent/Executor;

.field public final typeConverters:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->klass:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:I

    iput-boolean p1, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    new-instance p1, Landroidx/lifecycle/MethodCallsLogger;

    invoke-direct {p1}, Landroidx/lifecycle/MethodCallsLogger;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/lifecycle/MethodCallsLogger;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final varargs addMigrations([Landroidx/room/migration/Migration;)V
    .locals 5

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/HashSet;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/HashSet;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v2, Landroidx/room/migration/Migration;->startVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/HashSet;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/room/migration/Migration;

    iget-object p0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/lifecycle/MethodCallsLogger;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MethodCallsLogger;->addMigrations([Landroidx/room/migration/Migration;)V

    return-void
.end method

.method public final build()Landroidx/room/RoomDatabase;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    :goto_0
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_1
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/HashSet;

    iget-object v14, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-static {v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-nez v1, :cond_5

    new-instance v1, Lkotlin/UNINITIALIZED_VALUE;

    invoke-direct {v1}, Lkotlin/UNINITIALIZED_VALUE;-><init>()V

    :cond_5
    move-object v5, v1

    iget-wide v3, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    const-string v17, "Required value was null."

    if-lez v1, :cond_7

    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create auto-closing database for an in-memory database."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Landroidx/room/DatabaseConfiguration;

    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/lifecycle/MethodCallsLogger;

    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    iget-boolean v8, v0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    iget v3, v0, Landroidx/room/RoomDatabase$Builder;->journalMode:I

    if-eqz v3, :cond_2e

    iget-object v9, v0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    const-string v15, "context"

    invoke-static {v9, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x3

    if-eq v3, v2, :cond_8

    goto :goto_4

    :cond_8
    const-string v2, "activity"

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/app/ActivityManager;

    if-eqz v3, :cond_9

    check-cast v2, Landroid/app/ActivityManager;

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x2

    :goto_4
    move v10, v3

    :goto_5
    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v11, :cond_2d

    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v12, :cond_2c

    iget-boolean v13, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    iget-boolean v3, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    move-object/from16 v16, v15

    iget-object v15, v0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    move-object/from16 v18, v2

    move-object v2, v1

    move/from16 v19, v3

    move-object v3, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move/from16 v13, v19

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v18

    invoke-direct/range {v2 .. v16}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/lifecycle/MethodCallsLogger;Ljava/util/ArrayList;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string v2, ".canonicalName"

    move-object/from16 v3, p0

    iget-object v3, v3, Landroidx/room/RoomDatabase$Builder;->klass:Ljava/lang/Class;

    const-string v4, "klass"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, "fullPackage"

    invoke-static {v4, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_b

    move v6, v0

    goto :goto_6

    :cond_b
    move v6, v7

    :goto_6
    if-eqz v6, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    const/16 v6, 0x5f

    const/16 v8, 0x2e

    invoke-static {v5, v8, v6}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_Impl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    move v6, v0

    goto :goto_8

    :cond_d
    move v6, v7

    :goto_8
    if-eqz v6, :cond_e

    move-object v4, v5

    goto :goto_9

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v0, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>"

    invoke-static {v4, v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroidx/room/RoomDatabase;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v3

    iput-object v3, v2, Landroidx/room/RoomDatabase;->internalOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecs()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v6, v2, Landroidx/room/RoomDatabase;->autoMigrationSpecs:Ljava/util/LinkedHashMap;

    const/4 v8, -0x1

    iget-object v9, v1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v8

    if-ltz v10, :cond_11

    :goto_b
    add-int/lit8 v11, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v4, v10}, Ljava/util/BitSet;->set(I)V

    move v8, v10

    goto :goto_c

    :cond_f
    if-gez v11, :cond_10

    goto :goto_c

    :cond_10
    move v10, v11

    goto :goto_b

    :cond_11
    :goto_c
    if-ltz v8, :cond_12

    move v10, v0

    goto :goto_d

    :cond_12
    move v10, v7

    :goto_d
    if-eqz v10, :cond_13

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required auto migration spec ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v8

    if-ltz v3, :cond_17

    :goto_e
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_16

    if-gez v5, :cond_15

    goto :goto_f

    :cond_15
    move v3, v5

    goto :goto_e

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_f
    invoke-virtual {v2, v6}, Landroidx/room/RoomDatabase;->getAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/migration/Migration;

    iget v5, v4, Landroidx/room/migration/Migration;->startVersion:I

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/lifecycle/MethodCallsLogger;

    iget-object v9, v6, Landroidx/lifecycle/MethodCallsLogger;->calledMethods:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_19

    sget-object v5, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    :cond_19
    iget v9, v4, Landroidx/room/migration/Migration;->endVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_11

    :cond_1a
    move v5, v7

    :goto_11
    if-nez v5, :cond_18

    new-array v5, v0, [Landroidx/room/migration/Migration;

    aput-object v4, v5, v7

    invoke-virtual {v6, v5}, Landroidx/lifecycle/MethodCallsLogger;->addMigrations([Landroidx/room/migration/Migration;)V

    goto :goto_10

    :cond_1b
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v3

    const-class v4, Landroidx/room/SQLiteCopyOpenHelper;

    invoke-static {v4, v3}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/SQLiteCopyOpenHelper;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1c
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v3

    const-class v4, Landroidx/room/AutoClosingRoomOpenHelper;

    invoke-static {v4, v3}, Landroidx/room/RoomDatabase;->unwrapOpenHelper(Ljava/lang/Class;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/AutoClosingRoomOpenHelper;

    iget-object v13, v2, Landroidx/room/RoomDatabase;->invalidationTracker:Landroidx/room/InvalidationTracker;

    if-nez v3, :cond_2b

    iget v3, v1, Landroidx/room/DatabaseConfiguration;->journalMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    move v3, v0

    goto :goto_12

    :cond_1d
    move v3, v7

    :goto_12
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v4

    invoke-interface {v4, v3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-object v3, v2, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, v2, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    const-string v3, "executor"

    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v4, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iget-boolean v3, v1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v3, v2, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    iget-object v12, v1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    if-eqz v12, :cond_20

    iget-object v11, v1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-eqz v11, :cond_1f

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    move-object/from16 v3, v20

    invoke-static {v10, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v3, v13, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    iget-object v14, v3, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v14, :cond_1e

    invoke-direct/range {v9 .. v14}, Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V

    goto :goto_13

    :cond_1e
    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_13
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getRequiredTypeConverters()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    if-eqz v5, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v8

    if-ltz v11, :cond_24

    :goto_15
    add-int/lit8 v12, v11, -0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-virtual {v4, v11}, Ljava/util/BitSet;->set(I)V

    goto :goto_17

    :cond_22
    if-gez v12, :cond_23

    goto :goto_16

    :cond_23
    move v11, v12

    goto :goto_15

    :cond_24
    :goto_16
    move v11, v8

    :goto_17
    if-ltz v11, :cond_25

    move v12, v0

    goto :goto_18

    :cond_25
    move v12, v7

    :goto_18
    if-eqz v12, :cond_26

    iget-object v12, v2, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/LinkedHashMap;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required type converter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v8

    if-ltz v0, :cond_2a

    :goto_19
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_29

    if-gez v1, :cond_28

    goto :goto_1a

    :cond_28
    move v0, v1

    goto :goto_19

    :cond_29
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type converter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    :goto_1a
    return-object v2

    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "autoCloser"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create an instance of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access the constructor "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find implementation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    throw v0
.end method
