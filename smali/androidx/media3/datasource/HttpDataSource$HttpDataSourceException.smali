.class public Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
.super Landroidx/media3/datasource/DataSourceException;
.source "SourceFile"


# instance fields
.field public final type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x7d8

    invoke-direct {p0, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;II)V
    .locals 1

    .line 2
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/16 p2, 0x7d1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    iput p3, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 3
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_0

    const/16 p2, 0x7d1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;I)V
    .locals 1

    .line 4
    const/16 v0, 0x7d0

    if-ne p3, v0, :cond_0

    const/16 p3, 0x7d1

    :cond_0
    invoke-direct {p0, p3, p1, p2}, Landroidx/media3/datasource/DataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public static createForIOException(Ljava/io/IOException;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d7

    if-eqz v1, :cond_0

    const/16 v0, 0x7d2

    goto :goto_0

    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    const/16 v0, 0x3ec

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d1

    :goto_0
    if-ne v0, v2, :cond_3

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {p1, p0}, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, p0, v0, p1}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    move-object p1, v1

    :goto_1
    return-object p1
.end method
