.class public final Landroidx/sqlite/db/SimpleSQLiteQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteQuery;


# instance fields
.field public final bindArgs:[Ljava/lang/Object;

.field public final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/String;

    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bindTo(Landroidx/room/QueryInterceptorProgram;)V
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:[Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/UByte$Companion;->bind(Landroidx/room/QueryInterceptorProgram;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getSql()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/String;

    return-object p0
.end method
