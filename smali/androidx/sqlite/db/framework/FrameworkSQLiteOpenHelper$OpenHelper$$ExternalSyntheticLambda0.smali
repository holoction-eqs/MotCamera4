.class public final synthetic Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic f$0:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field public final synthetic f$1:Lkotlin/DeepRecursiveFunction;


# direct methods
.method public synthetic constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Lkotlin/DeepRecursiveFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iput-object p2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$$ExternalSyntheticLambda0;->f$1:Lkotlin/DeepRecursiveFunction;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "$callback"

    iget-object v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$$ExternalSyntheticLambda0;->f$1:Lkotlin/DeepRecursiveFunction;

    const-string v0, "$dbRef"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->$r8$clinit:I

    const-string v0, "dbObj"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/work/InputMergerFactory$1;->getWrappedDb(Lkotlin/DeepRecursiveFunction;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object p0

    const-string p1, "p.second"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Corruption reported by sqlite on database: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->deleteDatabaseFile(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->deleteDatabaseFile(Ljava/lang/String;)V

    :cond_2
    throw v1

    :catch_1
    :goto_3
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->deleteDatabaseFile(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    :goto_5
    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->deleteDatabaseFile(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
