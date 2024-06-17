.class public final synthetic Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 12

    iget-object v1, p0, Landroidx/work/impl/WorkDatabase$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    const-string p0, "$context"

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    const-string p0, "callback"

    iget-object v3, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-static {v3, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move p0, p1

    :goto_2
    if-eqz p0, :cond_3

    new-instance p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v7, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    iget-object v8, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    iget-object v9, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iget-boolean v10, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->useNoBackupDirectory:Z

    iget-boolean v11, p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->allowDataLossOnRecovery:Z

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
